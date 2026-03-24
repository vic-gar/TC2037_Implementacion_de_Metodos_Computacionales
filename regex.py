"""
Autor: Víctor Adrián García Galván
Fecha: 23 de marzo de 2026
Projecto: Test de Expresiones Regulares en Python
Proposito del proyecto: Analizador léxico utilizando 
una expresión regular para detectar el lenguaje definido
"""

import re

def test_regex(input_str):
    """
    Indica si la cadena de entrada es validada por la expresión regular.
 
    Solo permite a, b, c
    Debe contener "ab"
    No puede contener "ccaa"
    No puede contener "bbb"

    Args:
        input_string (str): Cadena a validar

    Returns:
        bool: True si la cadena es válida.
        bool: False si la cadena no es válida
    """
    
    pattern = r'^(?=.*ab)(?!.*ccaa)(?!.*bbb)[abc]*$'
    
    #Regresa bool para casos de prueba automáticos en el documento regex_test.py
    return bool(re.match(pattern, input_str))

def main():
    """
    Permite que el usuario ingrese cadenas para validarlas y escribe 'exit' 
    para salir del programa
    """
    while True:
        input_str = input("Ingresa una cadena compuesta de a, b y c ('exit' para salir) ")
        if input_str.lower() == 'exit':
            print("Programa terminado")
            break

        if test_regex(input_str):
            print(f"La cadena '{input_str}' es válida.")
        else:
            print(f"La cadena '{input_str}' NO es válida.")


if __name__ == "__main__":
    main()
