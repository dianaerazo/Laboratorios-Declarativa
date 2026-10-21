% Calculadora de sumas y restas con números enteros

% Regla para sumar dos números enteros.
sumar(A+B, Resultado) :-
    integer(A),
    integer(B),
    Resultado is A+B.

% Regla para restar dos números enteros.
restar(A-B, Resultado) :-
    integer(A),
    integer(B),
    Resultado is A-B.
