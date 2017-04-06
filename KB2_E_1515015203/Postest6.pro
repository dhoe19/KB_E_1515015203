PREDICATES
   faktorial(unsigned,real)   		/*unsigned = tipe data yang tidak memperbolehkan angka yang nilainya negatif*/
   faktorial(unsigned,real,unsigned,real) 
 
CLAUSES
   faktorial(N,FaktoN):-		
   faktorial(N,FaktoN,1,1). 		/*nilai dari (1,1) adalah nilai variabel I=1 dan P=1*/
 
  faktorial(N,FaktoN,N,FaktoN):-!.		
     faktorial(N,FaktoN,I,P):-		/*I=N P=FaktoN */
       IBaru = I+1,  			/*tahap 1 IBaru = 1+1*/ /*fase 2 IBaru = 2+1*/
       PBaru = P*IBaru,  		/*tahap 1 PBaru = 1*2*/ /*fase 2 PBaru = 2*3*/
       faktorial(N, FaktoN, IBaru, PBaru).	/*tahap 1 faktorial (N, FaktonN, 2, 2)*/ /*tahap 2 faktorial (N, FaktonN, 3, 6)*/  
 
GOAL
faktorial(3,X). /*di dalam goal N=3 jadi lanjutkan ke fase 2*/ /*fase 2 N=3 berarti X=6*/