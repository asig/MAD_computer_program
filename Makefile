all: alfred128.prg alfred64.prg alfred64de.prg

clean:
	rm *.prg

alfred128.prg:	alfred128.bas
	petcat -w70 -o alfred128.prg -- alfred128.bas

alfred64.prg:	alfred64-us.bas
	petcat -w2 -o alfred64.prg -- alfred64-us.bas

alfred64de.prg:	alfred64-de.bas
	petcat -w2 -o alfred64de.prg -- alfred64-de.bas
