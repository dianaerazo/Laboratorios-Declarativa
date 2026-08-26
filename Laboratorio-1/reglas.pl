%reglas segun los hechos
%
%cargar el archivo hechos
:- consult('hechos.pl').

peligro_numerico(bajo, 1).
peligro_numerico(medio, 2).
peligro_numerico(alto, 3).

%regla 1: zona_segura/1
zona_segura(Zona) :-
    zona(Zona),
    \+ enemigos(_, Zona).

%regla 2: zona_muy_peligrosa/2
zona_muy_peligrosa(Zona, Momento) :-
    nivel_peligro(Zona, Momento, Nivel),
    peligro_numerico(Nivel, N),
    N >= 3.

%regla 3: util_para_construir
util_para_construir(Personaje) :-
    puede(Personaje, cargar_troncos)
    ; puede(Personaje, construir).

%regla 4: recolectar_material_seguro/2
recolectar_material_seguro(Material, Momento) :-
    material_en(Material, Zona),
    ( Momento == dia ; zona_segura(Zona) ).


