%Laboratorio 3: Dado un número N, se debe sumar N con todos los números anteriores hasta llegar a 1.
% Caso base
sumaHastaUno(1, 1).

% Caso recursivo
sumaHastaUno(N, Suma) :-
    N > 1,
    N1 is N - 1,
    sumaHastaUno(N1, SumaParcial),
    Suma is N + SumaParcial.
