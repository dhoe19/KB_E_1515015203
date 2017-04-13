DOMAINS
integerlist = integer* /* tipe datanya integer dan menggunakan list*/


PREDICATES
tambah(integerlist,integerlist,integerlist) /*vmempunyai 3 parameter dan tipedatanya integer list */


CLAUSES
tambah([],List,List).   /*salah satu parameternya kosong yang bisa dipanggil kapan saja */
tambah([H|L1],List2,[H|L3]):- /*dengan bantuan fakta diatas maka list dapat terbantu  */
tambah(L1,List2,L3).   /* L3 adalah tail*/


GOAL
tambah([1,2,3],[5,6],L).