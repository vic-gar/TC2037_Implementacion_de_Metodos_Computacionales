# Evidencia 1: Implementación de Análisis Léxico

## Introducción

Este proyecto, se enfoca en generar un analizador léxico para un lenguaje basado en el alfabeto $\{a,b,c\}$, presentando las siguientes limitantes: debe evitar las secuencias inváidas 'ccaa' y 'bbb', garantizando la existencia de un patrón obligatorio, el 'ab'. Como bien explica Thomas Sudkamp (2006) en su obra Languages and machines: an introduction to the theory of computer science, los lenguajes regulares son la base para que una computadora pueda "decidir" si una entrada es identificada como válida o inválida. Para resolver este problema, nuestra herramienta principal es el Autómata Finito Determinista (DFA), ya que a diferencia de otros modelos, el DFA nos ofrece una estructura rígida y confiable donde, para cada estado y cada letra en este caso, existe una única respuesta posible. Siguiendo la definición de Sudkamp, representamos este modelo mediante una quíntupla $(Q, \Sigma, \delta, q_0, F)$, las cuales nos indican lo siguiente: 

- $Q$ es un número finito de estados.
- $\Sigma$ es un alfabeto finito.
- $q_0$ es el estado inicial.
- $\delta$ que es una función de $Q$ x $\Sigma$ para $Q$.
- $F$ que son nuestros estados finales.

El autómata no solo busca el patrón 'ab' (que es nuestro requisito para que una cadena sea válida), sino que de igual forma cuenta con estados de error diseñados por si se genera cualquiera de las combinaciones inválidas. Además del autómata, se hizo uso de Expresiones Regulares, las cuales funcionan como una fórmula algebraica que resume todas las reglas del lenguaje en una sola línea. La gran ventaja, según la teoría de Sudkamp, es que ambos métodos son equivalentes. 

Para la resolución de la evidencia se usó Python para validar nuestra expresión regular de forma rápida, por medio de una serie de pruebas documentadas, se demostró que el algorítmo funciona corectamente en la práctica, cumpliendo con cada restricción planteada.
