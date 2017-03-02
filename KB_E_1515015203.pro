predicates
	nondeterm coba(symbol,symbol,symbol)
	nondeterm nama(symbol)
	nondeterm barang(symbol)
	nondeterm merk(symbol)
	nondeterm likes(symbol,symbol,symbol)
	
	
clauses
	coba(G,H,I):-
		nama(G),
		barang(H),
		merk(I),
		likes(G,H,I).
		
	nama(alliance).
	nama(navi).
	nama(eg).
	
	barang(headset).
	barang(mouse).
	barang(keyboard).
	
	merk(steelseries).
	merk(razer).
	merk(logitech).
	
	likes(alliance,headset,steelseries).
	likes(navi,mouse,razer).
	likes(eg,keyboard,logitech).
	
goal
	coba(Team,Mengiklankan,Merk).