%laboratorio 4:
%dado un valor entero, alamacenar cada uno de los digitos que lo
%componen en una lista, un digito por casilla.
%

almacenar(0, []).
almacenar(N, [D|T]) :-
    N > 0,
    D is N mod 10,
    N1 is N // 10,
    almacenar(N1, T).
