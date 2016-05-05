all: alfred128us.prg alfred128de.prg alfred64us.prg alfred64de.prg

clean:
	rm *.prg

alfred128us.prg:	alfred128us.bas
	petcat -w70 -o alfred128us.prg -- alfred128us.bas

alfred128de.prg:	alfred128de.bas
	petcat -w70 -o alfred128de.prg -- alfred128de.bas

alfred64us.prg:	alfred64us.bas
	petcat -w2 -o alfred64us.prg -- alfred64us.bas

alfred64de.prg:	alfred64de.bas
	petcat -w2 -o alfred64de.prg -- alfred64de.bas
