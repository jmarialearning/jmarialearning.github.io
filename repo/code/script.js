document.addEventListener('DOMContentLoaded', () => {
    const htmlCode = document.getElementById('html-code');
    const cssCode = document.getElementById('css-code');
    const jsCode = document.getElementById('js-code');
    const runButton = document.getElementById('run-code');
    const previewFrame = document.getElementById('preview-frame');
    const consoleOutput = document.getElementById('console-output');

    // Simple console logger for our custom console
    const customConsole = {
        log: (...args) => {
            const message = args.map(arg => {
                if (typeof arg === 'object' && arg !== null) {
                    try {
                        return JSON.stringify(arg, null, 2);
                    } catch (e) {
                        return String(arg); // Fallback for circular references etc.
                    }
                }
                return String(arg);
            }).join(' ');
            consoleOutput.textContent += message + '\n';
            consoleOutput.scrollTop = consoleOutput.scrollHeight; // Scroll to bottom
        },
        error: (...args) => {
            customConsole.log('ERROR:', ...args);
            consoleOutput.style.color = '#e06c75'; // Red for errors
        },
        warn: (...args) => {
            customConsole.log('WARNING:', ...args);
            consoleOutput.style.color = '#e5c07b'; // Yellow for warnings
        },
        clear: () => {
            consoleOutput.textContent = '';
            consoleOutput.style.color = '#abb2bf'; // Reset color
        }
    };

    // Store the original console methods
    const originalConsole = {};
    for (const key in console) {
        if (typeof console[key] === 'function') {
            originalConsole[key] = console[key];
        }
    }

    // Function to update the preview and run JS
    const updatePreview = () => {
        // Clear previous console output
        customConsole.clear();

        // Get code from textareas
        const html = htmlCode.value;
        const css = `<style>${cssCode.value}</style>`;
        const js = jsCode.value;

        // Construct the full HTML for the iframe
        const combinedHtml = `
            <!DOCTYPE html>
            <html>
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                ${css}
            </head>
            <body>
                ${html}
                <script>
                    // Override console inside the iframe to capture output
                    (function() {
                        const originalLog = console.log;
                        const originalError = console.error;
                        const originalWarn = console.warn;

                        console.log = function(...args) {
                            window.parent.postMessage({ type: 'log', message: args }, '*');
                            originalLog.apply(this, args);
                        };
                        console.error = function(...args) {
                            window.parent.postMessage({ type: 'error', message: args }, '*');
                            originalError.apply(this, args);
                        };
                        console.warn = function(...args) {
                            window.parent.postMessage({ type: 'warn', message: args }, '*');
                            originalWarn.apply(this, args);
                        };
                    })();

                    try {
                        ${js}
                    } catch (e) {
                        console.error('Error en JavaScript:', e);
                    }
                </script>
            </body>
            </html>
        `;

        // Write the combined HTML to the iframe
        previewFrame.contentDocument.open();
        previewFrame.contentDocument.write(combinedHtml);
        previewFrame.contentDocument.close();
    };

    // Listen for messages from the iframe (console output)
    window.addEventListener('message', (event) => {
        // Ensure the message is from our iframe
        if (event.source === previewFrame.contentWindow) {
            const { type, message } = event.data;
            if (customConsole[type]) {
                customConsole[type](...message);
            }
        }
    });

    // Run code when button is clicked or code changes
    runButton.addEventListener('click', updatePreview);
    htmlCode.addEventListener('input', updatePreview);
    cssCode.addEventListener('input', updatePreview);
    jsCode.addEventListener('input', updatePreview);

    // Initial run when the page loads
    updatePreview();
});