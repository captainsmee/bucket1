ini1([1,2,3,4]).
ini2([]).
ini3([]).
iniN(15).
qqq
:-dm
, ini1(L1)
, ini2(L2)
, ini3(L3)
, iniN(N)
, aaa(L1,L2,L3,N)
.
aaa(_,_,A,N)
:-dm
, ini1(A)
, !
.
aaa(L1,L2,L3,N)
:-dm
, N>0
, bbb(L1,L2,L3,A1,A2,A3)
, N1 is N-1
, aaa(A1, A2, A3, N1)
.
bbb(P,Q,A,A1,A2,A):-opr(P,Q,A1,A2).
bbb(Q,P,A,A2,A1,A):-opr(P,Q,A1,A2).
bbb(P,A,Q,A1,A,A2):-opr(P,Q,A1,A2).
bbb(Q,A,P,A2,A,A1):-opr(P,Q,A1,A2).
bbb(A,P,Q,A,A1,A2):-opr(P,Q,A1,A2).
bbb(A,Q,P,A,A2,A1):-opr(P,Q,A1,A2).

dm. %dummy

opr([H1|L1],[],L1,[H1])
:-dm
, !
.
opr([H1|L1],[H2|L2],L1,[H1|[H2|L2]])
:-dm
, H1<H2
.
