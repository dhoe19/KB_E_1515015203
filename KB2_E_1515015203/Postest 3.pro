domains
biaya = integer
usia = byte
person = symbol

predicates 
harga(biaya,biaya,biaya) - procedure (i,i,o)
pernikahan(usia)- nondeterm(o)
gedung(symbol,symbol) - nondeterm (i,o)
angka(char) - nondeterm (i)
pemelai(person,person) - nondeterm (o,i)
run - nondeterm ()

clauses 
harga(A,B,Biaya):-
Biaya=A*B.
pernikahan(21).
gedung("hotel bumi senyiur","h-21").
gedung("smd","b-12").
angka(NB):-
'1'<=NB,
NB <='9'.
angka(NB):-
'1' <= NB,
NB <= '8'.

pemelai(dhoe,elbourne).
run:-
	write("--------- Selamat Datang ----------"),nl,
	write("Selamat Datang"),nl,
	readchar(_).

goal
harga(12000000,50000000,Biaya),
pernikahan(Usia),
gedung("hotel bumi senyiur",Nomer),
angka('7'),
pemelai(Siapa,elbourne),
run.