% Autor: Víctor Adrián García Galván
% Fecha: 23 de marzo de 2026
% Proyecto: test automata
% Propósito del proyecto: Probar el automata

% Cargamos el archivo con el automata
:- ["automata"].

% Casos de prueba

test_1 :-
    validar_lista([a,b]).

test_2 :-
    validar_lista([c,a,b]).

test_3 :-
    validar_lista([a,b,c]).

test_4 :-
    validar_lista([a,a,b]).

test_5 :-
    validar_lista([a,b,a,b]).

test_6 :-
    validar_lista([c,a,b,a,b]).

test_7 :-
    validar_lista([a,b,c,a]).

test_8 :-
    validar_lista([c,a,a,b]).

test_9 :-
    validar_lista([a,c,b,a,b]).

test_10 :-
    validar_lista([c,c,a,b,a,c]).

test_11 :-
    validar_lista([b,a,b]).

test_12 :-
    validar_lista([a,c,a,b]).

test_13 :-
    validar_lista([c,b,a,b]).

test_14 :-
    validar_lista([a,a,a,b]).

test_15 :-
    validar_lista([c,a,b,c,b,a]).




% Casos inválidos

test_16 :-
    validar_lista([]).

test_17 :-
    validar_lista([a]).

test_18 :-
    validar_lista([b]).

test_19 :-
    validar_lista([c]).

test_20 :-
    validar_lista([a,a,a]).

test_21 :-
    validar_lista([b,b,b]).

test_22 :-
    validar_lista([c,c,a,a]).

test_23 :-
    validar_lista([a,c,b,c]).

test_24 :-
    validar_lista([a,b,b,b]).

test_25 :-
    validar_lista([c,c,a,a,a,b]).

test_26 :-
    validar_lista([b,b,a]).

test_27 :-
    validar_lista([c,a,c,a]).

test_28 :-
    validar_lista([b,c,c]).

test_29 :-
    validar_lista([a,c,c,a,a,b]).

test_30 :-
    validar_lista([c,b,b,b,a]).




% Ejecutar todos los casos de prueba
run_tests :-
    test_1,
    test_2,
    test_3,
    test_4,
    test_5,
    test_6,
    test_7,
    test_8,
    test_9,
    test_10,
    test_11,
    test_12,
    test_13,
    test_14,
    test_15,
    test_16,
    test_17,
    test_18,
    test_19,
    test_20,
    test_21,
    test_22,
    test_23,
    test_24,
    test_25,
    test_26,
    test_27,
    test_28,
    test_29,
    test_30.