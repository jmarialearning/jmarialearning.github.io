document.addEventListener('DOMContentLoaded', () => {
    const input = document.getElementById('input');
    const output = document.getElementById('output');
    
    let commandHistory = '';

    const originalConsoleLog = console.log;
    const originalAlert = window.alert;
    const originalPrompt = window.prompt;
    
    function addLine(text, type) {
        const line = document.createElement('div');
        line.textContent = text;
        line.className = type;
        output.appendChild(line);
        output.scrollTop = output.scrollHeight;
    }

    console.log = function(...args) {
        const message = args.map(arg => {
            if (typeof arg === 'object' && arg !== null) {
                return JSON.stringify(arg, null, 2);
            }
            return String(arg);
        }).join(' ');
        addLine(message, 'log');
    };

    window.alert = function(message) {
        addLine(`(Alerta): ${message}`, 'alert');
    };

    window.prompt = function(message) {
        addLine(`(Prompt): ${message}`, 'prompt-message');
        
        const tempInput = document.createElement('input');
        tempInput.type = 'text';
        tempInput.classList.add('prompt-input');
        tempInput.placeholder = 'Escribe tu respuesta y presiona Enter...';
        output.appendChild(tempInput);
        
        return new Promise(resolve => {
            tempInput.focus();
            tempInput.addEventListener('keydown', (event) => {
                if (event.key === 'Enter') {
                    event.preventDefault();
                    const response = tempInput.value;
                    addLine(`(Tu respuesta): ${response}`, 'prompt-response');
                    tempInput.remove();
                    resolve(response);
                }
            });
        });
    };

    async function executeCommand(command) {
        addLine(`> ${command}`, 'prompt');
        
        // Verifica si el comando contiene un prompt
        const isPromptCommand = command.includes('prompt(');
        if (!isPromptCommand) {
            commandHistory += command + '\n';
        }
        
        try {
            await eval(`(async () => { ${commandHistory} })()`);
        } catch (e) {
            // Si hay un error, limpia el historial
            addLine(e.toString(), 'error');
            commandHistory = '';
        }

        // Si el comando inicial contenía un prompt, se vuelve a agregar la línea para su posterior ejecución.
        if (isPromptCommand) {
             commandHistory += command + '\n';
        }

        // Ahora, evaluamos la última línea por separado para obtener su resultado.
        try {
            const lastCommandResult = await eval(`(async () => { return ${command}; })()`);
            if (lastCommandResult !== undefined) {
                addLine(String(lastCommandResult), 'result');
            }
        } catch(e) {
            // Este catch es para los errores del último comando, y no limpia el historial
        }

    }

    input.addEventListener('keydown', (event) => {
        if (event.key === 'Enter' && !event.shiftKey) {
            event.preventDefault();
            const command = input.value.trim();
            if (command) {
                executeCommand(command);
                input.value = '';
            }
        }
    });

    addLine('Bienvenido a la consola JS.', 'result');
    addLine('Escribe tu código y presiona Enter para ejecutar.', 'result');
});