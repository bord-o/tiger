
run: build
	./main

build: lexer
	mlton main.mlb 

clean:
	rm main
	rm tiger.lex.sml

lexer:
	mllex tiger.lex
