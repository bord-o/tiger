structure Parse =
struct 

  fun parse filename =
      let val file = TextIO.openIn filename
	  fun get _ = TextIO.input file
	  val lexer = Mlex.makeLexer get
	  fun do_it() =
	      let val t = lexer()
	       in print t; print "\n";
		   if substring(t,0,3)="EOF" then () else do_it()
	      end
       in do_it();
	  TextIO.closeIn file
      end

end

fun parse_debug testfile = (print ("lexing file: "^testfile^"\n"); Parse.parse testfile)
val _ = List.app parse_debug
	[
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
