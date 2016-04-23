all: alfred128.prg alfred64.prg

clean:
	rm *.prg
	
alfred128.prg:	alfred128.bas
	petcat -w70 -o alfred128.prg -- alfred128.bas

alfred64.prg:	alfred64-us.bas
	petcat -w2 -o alfred64.prg -- alfred64-us.bas

