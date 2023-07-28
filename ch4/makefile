
all: lexer parser
	rlwrap sml sources.cm

clean:
	rm tiger.grm.sml
	rm tiger.lex.sml

lexer:
	mllex tiger.lex

parser:
	mlyacc tiger.grm