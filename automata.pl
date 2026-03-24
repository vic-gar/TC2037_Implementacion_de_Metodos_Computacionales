% Autor: Víctor Adrián García Galván
% Fecha: 23 de marzo de 2026
% Proyecto: Automata para analisis léxico en prolog 
% Propósito del proyecto: Analizador léxico utilizando 
% automata en prolog para detectar el lenguaje definido

% Estado inicial
estado_inicial(a).

% Movimientos primera parte del automata
move(a, e, a).
move(a, b, b).
move(a, g, c).

move(b, e, a).
move(b, c, b).
move(b, g, c).

move(c, e, a).
move(c, d, b).
move(c, g, c).

move(d, d, a).
move(d, d, b).
move(d, d, c).

move(e, f, a).
move(e, a1, b).
move(e, g, c).

move(f, f, a).
move(f, a1, b).
move(f, g, c).

move(g, e, a).
move(g, b, b).
move(g, h, c).

move(h, i, a).
move(h, b, b).
move(h, h, c).

move(i, j, a).
move(i, a1, b).
move(i, g, c).

move(j, j, a).
move(j, j, b).
move(j, j, c).


% Movimientos segunda parte del automata
move(a1, e1, a).
move(a1, c1, b).
move(a1, g1, c).

move(b1, e1, a).
move(b1, c1, b).
move(b1, g1, c).

move(c1, e1, a).
move(c1, d1, b).
move(c1, g1, c).

move(d1, d1, a).
move(d1, d1, b).
move(d1, d1, c).

move(e1, f1, a).
move(e1, b1, b).
move(e1, g1, c).

move(f1, f1, a).
move(f1, b1, b).
move(f1, g1, c).

move(g1, e1, a).
move(g1, b1, b).
move(g1, g1, c).

move(h1, i1, a).
move(h1, b1, b).
move(h1, h1, c).

move(i1, j1, a).
move(i1, b1, b).
move(i1, g1, c).

move(j1, j1, a).
move(j1, j1, b).
move(j1, j1, c).


% Estados Finales
estado_final(a1).
estado_final(b1).
estado_final(c1).
estado_final(e1).
estado_final(f1).
estado_final(g1).
estado_final(h1).
estado_final(i1).

% Iniciamos el proceso 
validar_lista(List) :-
    estado_inicial(Start),
    write(List),
    validar_lista(Start, List).

% Indica cuando se llega a un estado final 
validar_lista(State, []) :-
    estado_final(State),
    write(': Valido'), nl.

% Indica cuando nel estado actual no es final y lo rechaza
validar_lista(State, []) :-
    \+ estado_final(State),
    write(': Invalido'), nl.

% Revisa la lista caracter por caracter
validar_lista(State, [Head|Tail]) :-
    move(State, NextState, Head),
    validar_lista(NextState, Tail).