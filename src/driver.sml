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
		"../testcases/test24.tig"
	]
