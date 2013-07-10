    .text                    # Comienza la sección de instrucciones

    .globl  fun              # Cabecera de la declaración
    .type   fun, @function
fun:                         # Comienzan las instrucciones
    pushl   %ebp             # Epílogo
    movl    %esp, %ebp

    pushl   8(%ebp)          # La función llama a printf con el primer argumento (8(%ebp))
    pushl   $CADENA
    call    printf

    leave                    # Comienza el epílogo
    ret

    .size   fun, .-fun       # Pie de la función

    .globl  main             # Cabecera de la función main
    .type   main, @function
main:
    pushl   %ebp             # Prólogo
    movl    %esp, %ebp

    pushl   $5               # Llamada a la función, primer argumento a la pila
    call    fun              # Llamada
    addl    $4, %esp         # Liberación de la memoria ocupada por los argumentos

    leave                    # Epílogo
    ret

    .size   main, .-main     # Pie de la función
        
