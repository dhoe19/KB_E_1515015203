DOMAINS
buah = symbol
sayur = symbol
jenis = symbol
harga = real

PREDICATES
nondeterm suka (buah,buah)
jual
nondeterm makan (sayur)
nondeterm beli (sayur, harga)
ingin(sayur)

CLAUSES
suka (mangga, melon).
suka (rambutan, durian).
suka (kelengkeng, anggur).

jual:-
suka(X,Y),
write(X, " dijual jika ada ", Y, "\n\n"),
fail.
jual.

makan(Sayur):-
beli(Sayur, Harga),
Harga >= 80,

not(ingin(Sayur)).
beli ("buah", 100).
beli ("sayur", 90).
beli ("daging",60).
ingin("sayur").
ingin("daging").

goal

jual,
makan(Makanan_Yang_Diinginkan_Adalah).
