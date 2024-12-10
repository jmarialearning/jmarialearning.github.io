global start
section .data
    msg: DB 'Hola, esto es ensamblador.', 10 ; El 10 es para introducir el final de cadena \n en C
    longMsg EQU $ - msg ; Los bytes utilizados por la cadena de arriba. Desde el final, con el $ al pricnipio con msg.
section .text 
start:
    mov rax, 4 ; Función sys_write en sistemas UNIX
    mov rbx, 1 ; Pasado a stdout
    mov rcx, msg ; El mensaje en sí de arriba.
    mov rdx, longMsg ; La longitud del mensaje.
    int 0x80 ; Pasar ejecución al núcleo mendiante gestión de la interrupción.
    mov rax, 1 ; Función salir en UNIX
    mov rbx, 0 ; Codigo de salida 0 todo correcto
    int 0x80 ; Ejecución y gestión al nucleo de vuelta
    ret ; y nos vamos