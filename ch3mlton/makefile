
run: build
	./main

build: parser lexer
	mlton main.mlb 

prof: lexer parser
	mlton -profile count main.mlb
	./main > /dev/null
	mlprof -raw true -show-line true main mlmon.out | head -n20


callgraph: lexer parser
	mlton -profile time main.mlb
	mlprof -call-graph ../prof/callgraph.dot ./main
	dot -Tpng ../prof/callgraph.dot -o ../prof/callgraph.png

clean:
	rm main &
	rm tiger.lex.sml &
	rm tiger.grm.sml &
	rm tiger.grm.desc &
	rm tiger.grm.sig &
	rm mlmon.out &
	rm ../prof/* 



lexer:
	mllex tiger.lex

parser:
	mlyacc tiger.grm

