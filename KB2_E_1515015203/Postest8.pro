DOMAINS
  mhs = x(nama, nim, fak, org, ttl, almt, sosmed )  /* berikut adalah variable yang dipakai*/
  nim = integer/* nim diberikan integer karena semuanya angka */
  fak, nama, org, almt, ttl, sosmed = string /* dan sisanya diberikan string karena beberapa ada yang mengandung huruf nantinya */


PREDICATES
  run - procedure () /* run adalah variable pemanggil */

CLAUSES
  run:-
      write("Data Diri Mahasiswa"),nl,   /* inputan yang kita buat menggunakan write dan akan tersimpan di readln */
      write("Nama : "), readln(Nama),
      write("Nim : "), readint(Nim), /* Misalkan nim disini kita masukkan huruf (Integer) maka program akan mengulang ke awal */
      write("Fakultas : "), readln(Fak),
      write("Organisasi : "), readln(Org),
      write("TTL : "), readln(Ttl),
      write("Alamat : "),readln(Almt),
      write("Sosial Media : "),readln(Sosmed),nl,
      X=x(Nama,Nim,Fak,Org,Ttl,Almt,Sosmed), 
      write(X),nl,
      write("Keluar? Ketik (y/n)"), /* lacal balik jika pilihan selain dari y maka kembali ke awal, jika memilih y maka program berhenti*/ 
      readchar(Ch),nl,Ch='y', !. /* ini lacak baliknya */

  run :-                   
	 nl,nl,
	 write("Kembali ke awal."),
	 nl,nl,run.

GOAL
  
  run.
