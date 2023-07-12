structure Parse : sig val parse : string -> unit  end =
struct 
  structure TigerLrVals = TigerLrValsFun(structure Token = LrParser.Token)
  structure Lex = TigerLexFun(structure Tokens = TigerLrVals.Tokens)
  structure TigerP = Join(structure ParserData = TigerLrVals.ParserData
			structure Lex=Lex
			structure LrParser = LrParser)
  fun parse filename =
      let val _ = (ErrorMsg.reset(); ErrorMsg.fileName := filename)
	  val file = TextIO.openIn filename
	  fun get _ = TextIO.input file
	  fun parseerror(s,p1,p2) = ErrorMsg.error p1 s
	  val lexer = LrParser.Stream.streamify (Lex.makeLexer get)
	  val (absyn, _) = TigerP.parse(30,lexer,parseerror,())
       in TextIO.closeIn file;
	   absyn
      end handle LrParser.ParseError => raise ErrorMsg.Error

end

val _ = 

	let 
		val programs = [
		"../testcases/merge.tig",
		"../testcases/queens.tig",
		"../testcases/test10.tig",
		"../testcases/test11.tig",
		"../testcases/test12.tig",
		"../testcases/test13.tig",
		"../testcases/test14.tig",
		"../testcases/test15.tig",
		"../testcases/test16.tig",
		"../testcases/test17.tig",
		"../testcases/test18.tig",
		"../testcases/test19.tig",
		"../testcases/test1.tig",
		"../testcases/test20.tig",
		"../testcases/test21.tig",
		"../testcases/test22.tig",
		"../testcases/test23.tig",
		"../testcases/test24.tig",
		"../testcases/test25.tig",
		"../testcases/test26.tig",
		"../testcases/test27.tig",
		"../testcases/test28.tig",
		"../testcases/test29.tig",
		"../testcases/test2.tig",
		"../testcases/test30.tig",
		"../testcases/test31.tig",
		"../testcases/test32.tig",
		"../testcases/test33.tig",
		"../testcases/test34.tig",
		"../testcases/test35.tig",
		"../testcases/test36.tig",
		"../testcases/test37.tig",
		"../testcases/test38.tig",
		"../testcases/test39.tig",
		"../testcases/test3.tig",
		"../testcases/test40.tig",
		"../testcases/test41.tig",
		"../testcases/test42.tig",
		"../testcases/test43.tig",
		"../testcases/test44.tig",
		"../testcases/test45.tig",
		"../testcases/test46.tig",
		"../testcases/test47.tig",
		"../testcases/test48.tig",
		"../testcases/test49.tig",
		"../testcases/test4.tig",
		"../testcases/test5.tig",
		"../testcases/test6.tig",
		"../testcases/test7.tig",
		"../testcases/test8.tig",
		"../testcases/test9.tig"
		]

	in
	
	(* List.app (fn prog => (print ("Parsing: " ^ prog ^ "\n"); Parse.parse prog; print "\n\n" )) programs *)
	List.app (fn prog => (print ("Parsing: " ^ prog ^ "\n"); Parse.parse prog; print "\n\n" )) [
		"../testcases/test49.tig",
		"../testcases/merge.tig"
	]
	end




