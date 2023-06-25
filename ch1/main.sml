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

	type table = (string * int) list

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
			fun update (table: (id * int) list, id: id, value: int): (id * int) list = (id, value)::table
			fun lookup (table: (id * int) list, id: id): int = 
				let 
					val value = List.find (fn (curr_id,_) => curr_id=id ) table
					
				in
					case value of 
					SOME v => #2 v
					| NONE => raise UndefinedIdentifier

				end
 
			fun interpStm (prog: stm, table: table ): table = (* return a table *)
				case prog of
				CompoundStm (a,b) => ( interpStm (b, interpStm (a, table) )) (* done *)
				|AssignStm (id,expr) =>
					let 
       					val (res, new_table) = interpExp (expr, table)
    				in
        				update (new_table, id, res)
    				end
					 (* table update of id to the value returned by expr *)
				|PrintStm a => (List.app (fn expr  => 
					let 
						val (res, _) = interpExp (expr, table)
					in
						print ((Int.toString res) ^ " ")
					end) a; print "\n"; table)


			and interpExp (expr: exp, table: table ): (int * table) = (* return in and table *)
				case expr of
	     		IdExp a => (lookup (table, a), table)   (* do lookup and return value *)
		     	| NumExp a => (a, table) (* int literal, just return the int*)
	            | OpExp (a, oper, b) => 
					let 
						val (res1, t1) = (interpExp (a, table))
						val (res2, _) = (interpExp (b, t1))
						val operation = 
						case oper of
						Plus => Int.+
						| Minus => Int.-
						| Times => Int.*
						| Div => Int.div
						
					in
					(operation (res1, res2), table)
					(* actually calculate *)
					end
	            | EseqExp (a, b) => 
					let
						val newtable = interpStm (a, table)
					in
					interpExp (b, newtable)
					(* evaluate the stm first, then evaluate the expr*)
					end

		in
		ignore (interpStm (prog, []))
		end
		
end

structure Main = struct
	
	fun hello () = print "hello from main!\n"
	fun newlines () = print "\n\n"
	val _ = hello ()

	val _ = newlines ()
	val _ = print (Int.toString (Straightline.maxargs Straightline.prog))
	val _ = newlines ()
	val _ = Straightline.interp Straightline.prog
	val _ = newlines ()

end
