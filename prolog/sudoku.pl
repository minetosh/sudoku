sudoku(Rows) :-
    maplist(seigen, Rows), cols(Rows), blks(Rows),
    maplist(fd_labeling, Rows).

cols([[]|L]).
cols(L) :-
    maplist(nth(1), L, X), seigen(X), maplist(delete, L, X, NL), cols(NL).

blks([]).
blks([X, Y, Z|L]) :- blks2(X, Y, Z), blks(L).

blks2([],_,_).
blks2([X1, X2, X3|XL], [Y1, Y2, Y3|YL], [Z1, Z2, Z3|ZL]) :-
    seigen([X1, X2, X3, Y1, Y2, Y3, Z1, Z2, Z3]), blks2(XL, YL, ZL).

seigen(X) :- fd_domain(X, 1, 9), fd_all_different(X).
