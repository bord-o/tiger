structure Straightline = struct
	type id = string

	datatype binop = Plus | Minus | Times | Div

	datatype stm = CompoundStm of stm * stm
		     | AssignStm of id * exp
		     | PrintStm of exp list

	     and exp = IdExp of id
		     | NumExp of int
	             | OpExp of exp * binop * exp
	             | EseqExp of stm * exp

	val prog = 
	 CompoundStm(AssignStm("a",OpExp(NumExp 5, Plus, NumExp 3)),
	  CompoundStm(AssignStm("b",
	      EseqExp(PrintStm[IdExp"a",OpExp(IdExp"a", Minus,NumExp 1)],
	           OpExp(NumExp 10, Times, IdExp"a"))),
	   PrintStm[IdExp "b"]))

	fun maxargs (CompoundStm(a, b)) = Int.max (maxargs a, maxargs b)
	|   maxargs (AssignStm(_, e)) = (case e of
		EseqExp(s, _) => maxargs s
		| _ => 0)
	|   maxargs (PrintStm a) = List.length a

	exception UndefinedIdentifier
	fun interp (prog: stm): unit =
		let
			fun interpStm (prog, table) = 
				case prog of
				CompoundStm (a,b) => (interpStm (a, table); interpStm (b, table)) (* done *)
				|AssignStm (id,expr) => () (* table update of id to the value returned by expr *)
				|PrintStm a => () (* print each expr result left to right *)

			and interpExp (prog, table) = 
				case prog of
	     		IdExp a => ()  (* do lookup and return value *)
		     	| NumExp a => () (* int literal, just return the int*)
	            | OpExp (a, oper, b) => () (* actually calculate *)
	            | EseqExp (a, b) => () (* evaluate the stm first, then evaluate the expr*)
				

			fun update (table, id, value) = (id, value)::table
			fun lookup (table, id) = 
				let 
					val value = List.find (fn (curr_id,_) => curr_id=id ) table
					
				in
					case value of 
					SOME v => v
					| NONE => raise UndefinedIdentifier

				end

		in
		()
		end
		
end

structure Main = struct
	
	fun hello () = print "hello from main!\n"
	val _ = hello ()


	val _ = print (Int.toString (Straightline.maxargs Straightline.prog))

end
