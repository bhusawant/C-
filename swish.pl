zebra(shibu).
zebra(tibu).
mammal(X) :- zebra(X).
vertibrates(X) :- mammal(X).
has(X,spinal_chord) :- mammal(X).
living-beings(X) :- vertibrates(X).
herbivores(X) :- zebra(X).
eat(X,leaves) :- herbivores(X).
tsec_games(tibu,mascort) :- zebra(tibu).



areac(A,R) :- A is(22*R^2)/7.


surfaces(A,R) :-  
    write('Enter the radius of sphere'),nl,
    read(R),
    A is(4*3.14*R^2),
    write('Surface area of sphere is:'),
    write(A). 

volumes(V,R) :-  
    write('Enter the radius of sphere'),nl,
    read(R),
    V is((4/3)*3.14*R^3),
    write('volume of sphere is:'),
    write(V). 

fact(0,1).
fact(N,F) :-X is N-1, fact(X,Y), F is N*Y.

double([]) :- write(',').
double([H]) :- X is H+H, write(X).
double([H|Tail]) :- X is H+H, write(X), write(','), double(Tail).

ssqure([H]) :- X is H*H, write(X).
ssqure([H|Tail]) :- X is H*H, write(X), write(','), ssqure(Tail).

fsqure([H],S) :- X is H*H, append([X],[],S).
fsqure([H|Tail],S) :- X is H*H, fsqure(Tail,T), append([X],T,S).

multab1(N,T,T) :- A is N*T, write(A).
multab1(N,T,C) :- Z is N*C, write(Z),nl, D is C+1, multab1(N,T,D). 

/*readdat(1) :- write('Enter First name'), read(F), write('Enter Last name'), read(L),nl, write(F),nl,write(L),nl.
*/

readword(1) :- write('Enter word'), read(Z), write('Word is '), write(Z), nl,nl.
readword(A) :- A>1, write('Enter First name'), write(F), nl, write(L),nl.

downtoloop(0).
downtoloop(N) :- N>0, write(N),nl,X is N-1, downtoloop(X).


uptoloop(10).
uptoloop(N) :- N<10, write(N),nl,X is N+1, uptoloop(X).

list_sum([],0).
list_sum([Head|Tail], TotalSum) :- list_sum(Tail, Sum), TotalSum is Head + Sum.

table(A,N,O):-
    A is N,
    C = N * O;
    write(C), write('='), write(O), nl.
table(A,N,T):-
    M is T-1,
    table(B,N,M),
    A is N*T, C = N*T,
    wirte(C), write('='), write(A);nl.