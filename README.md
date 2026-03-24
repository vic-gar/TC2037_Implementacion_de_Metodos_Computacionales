# Evidencia 1: Implementación de Análisis Léxico

## Introducción

Este proyecto, se enfoca en generar un analizador léxico para un lenguaje basado en el alfabeto $\{a,b,c\}$, presentando las siguientes limitantes: debe evitar las secuencias inváidas 'ccaa' y 'bbb', garantizando la existencia de un patrón obligatorio, el 'ab'. Como bien explica Thomas Sudkamp (2006) en su obra Languages and machines: an introduction to the theory of computer science, los lenguajes regulares son la base para que una computadora pueda "decidir" si una entrada es identificada como válida o inválida. Para resolver este problema, nuestra herramienta principal es el Autómata Finito Determinista (DFA), ya que a diferencia de otros modelos, el DFA ofrece una estructura en donde, para cada estado y cada valor en este caso, existe una única respuesta posible.

El autómata no solo busca el patrón 'ab' (que es nuestro requisito para que una cadena sea válida), sino que de igual forma cuenta con estados de error diseñados por si se genera cualquiera de las combinaciones inválidas. Además del autómata, se hizo uso de Expresiones Regulares, las cuales funcionan como una fórmula algebraica que resume todas las reglas del lenguaje en una sola línea. La gran ventaja, según la teoría de Sudkamp, es que ambos métodos son equivalentes. 

Para la resolución de la evidencia se usó Python para validar nuestra expresión regular de forma rápida, por medio de una serie de pruebas documentadas, de esta misma forma se llevó a cabo la implementación del autómata por medio de prolog, igualmente con sus casos de prueba documentadas. 

## Implementaciones

En esta sección veremos las dos implementaciones que generamos para nuestro analizador léxico:
- Implementación de expresión regular con python
- Implementación de autómata con prolog

## Regex

La expresión regular se construyó considerando las restricciones ya enlistadas con el alfabeto  $\{a,b,c\}$. El regex generado fue el siguiente:
$ ^(?=.*ab)(?!.*ccaa)(?!.*bbb)[abc]*$ $

Podemos entender la expresión como: 
- (?=.*ab) es un lookahead positivo que obliga a que la cadena contenga la subcadena ab en algún punto.
- (?!.*ccaa)(?!.*bbb) son lookaheads negativos que impiden que aparezcan las secuencias prohibidas ccaa y bbb.
- [abc]* indica que la cadena solo puede estar formada por los caracteres a, b y c, en cualquier cantidad.
- ^ y $ aseguran que toda la cadena cumpla la expresión.

Para comprobar que la expresión regular funciona correctamente, se utilizó Python con el módulo re, evaluando tanto cadenas válidas como inválidas.

**Ejecutar para casos manuales**
`python regex.py`

Después, debes ingresar una cadena compuesta por a, b y c.

El programa mostrará si la cadena es válida o no. Para salir, se escribe:

$exit$

**Ejecutar casos automáticos**
`python regex_test.py`


## Automata (DFA)

Una vez definida la expresión regular, se construyó su autómata finito determinista (DFA) equivalente.

Primero se identificaron los elementos del modelo determinista: estados, alfabeto, transiciones, estado inicial y estados de aceptación. Después, la construcción se realizó de forma progresiva, iniciando con las restricciones principales del lenguaje (secuencias prohibidas y la condición obligatoria) y posteriormente integrando combinaciones más complejas. De esta manera se obtuvo el autómata final, el cual representa correctamente el lenguaje definido por la expresión regular.

<img width="599" height="1006" alt="Automata" src="https://github.com/user-attachments/assets/9c697e4b-b728-46db-9a82-76f89dfa0a8f" />


Para ejecutar el autómata, se utiliza el intérprete de Prolog, primero, es necesario tener los archivos del proyecto en la misma carpeta, como el archivo del autómata (automata.pl) y el archivo de pruebas (automata_test.pl).

**Inicializamos prolog** (en terminal)
`swipl` 

**Ya en prolog: ejecución automática de pruebas**
`[automata_tests].`

`run_tests.`

**Ejecución manual de pruebas**
`validar_lista([a,b,c]). --> a,b,c es un ejemplo`


## Análisis de complejidad

## Automata (DFA)

El autómata construido corresponde a un autómata finito determinista (DFA), en este tipo de modelo, cada símbolo de la entrada provoca exactamente una transición de estado, por lo tanto, si la cadena tiene longitud n, el autómata realiza n transiciones.

Según el libro Introduction to the Theory of Computation de Michael Sipser, en el apartado de Automata, Computability, and Complexity, los DFA reconocen cadenas procesando cada símbolo una sola vez, lo que implica un tiempo lineal respecto al tamaño de la entrada. En consecuencia, la complejidad temporal es:

`O(n)`

donde n es la longitud de la cadena.

## Regex

El proceso de evaluación de esta expresión también depende del tamaño de la cadena de entrada.

- [abc]* recorre la cadena completa para validar que todos los caracteres pertenezcan al alfabeto.
- (?=.*ab) verifica la existencia de la subcadena ab.
- (?!.*ccaa) y (?!.*bbb) revisan que las secuencias inválidas no estén presentes.

Cada uno de estos componentes implica recorrer la cadena, por lo tanto, si la longitud de la cadena es n, el tiempo total de evaluación crece de manera proporcional a n.

En consecuencia, la complejidad temporal es:

`O(n)`

## Conclusión

A partir de las implementaciones realizadas, se observa que tanto las expresiones regulares como los autómatas finitos deterministas (DFA) son soluciones válidas para reconocer algún lenguaje definido. Las expresiones regulares destacan por su simplicidad y facilidad de implementación, mientras que los autómatas ofrecen una solución más estructurada y flexible, pero su implementación requiere un mayor esfuerzo y tiempo. En este proyecto, debido a la simplicidad de las restricciones, puedo indicar que las expresiones regulares resultan la opción más práctica, sin embargo, para problemas más complejos, el uso de DFA sería más recomendable debido a su facilidad visual para reconocer los movimientos a realizar.

## Referencias

Sipser, M. (2013). Introduction to the Theory of computation, (3rd ed.). MIT Press. https://cs.brown.edu/courses/csci1810/fall-2023/resources/ch2_readings/Sipser_Introduction.to.the.Theory.of.Computation.3E.pdf

Sudkamp, T. (2006). Languages and machines: an introduction to the theory of computer science. https://people.uncw.edu/adharg/courses/csc360/SudkampText.pdf







