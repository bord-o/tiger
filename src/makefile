
run: build
	./main

build: lexer
	mlton main.mlb 

prof: lexer
	mlton -profile count main.mlb
	./main > /dev/null
	mlprof -raw true -show-line true main mlmon.out | head -n20


callgraph: lexer
	mlton -profile time main.mlb
	mlprof -call-graph ../prof/callgraph.dot ./main
	dot -Tpng ../prof/callgraph.dot -o ../prof/callgraph.png

clean:
	rm main
	rm tiger.lex.sml
	rm mlmon.out
	rm ../prof/*



lexer:
	mllex tiger.lex

