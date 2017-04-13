DOMAINS
nama=symbol
mk=symbol
nmatkul=symbol

PREDICATES
nondeterm matkul(nama,mk,nmatkul)
nondeterm tdklulus(nama,mk,nmatkul)

CLAUSES
matkul("supardi","ai",a). matkul("suharto","ai",b). matkul("suradi","ai",c). matkul("suyatmi","ai",d). matkul("suparni","ai",c).
matkul("suradi","pde",b). matkul("suharto","pde",c). matkul("sujiman","pde",c). matkul("suyatmi","pde",b). matkul("sutini","pde",d).
matkul("sujiman","so",b). matkul("suparni","so",a). matkul("suripah","so",a). matkul("suyatmi","so",b). matkul("sutini","so",c).

tdklulus(Nama,Mk,nmatkul):-
matkul(Nama,Mk,d).

GOAL
write("Atas"),nl,
matkul(supardi,Matkul_yang_di_ambil,_);
write("Bawah"),nl,
tdklulus(Nama,Matkul,_);
write("Tengah"),nl,
write("apakah suripah mengikuti perkuliahan semester ini"),

matkul(suripah,_,_).