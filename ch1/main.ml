let () = print_endline "hello"

type id = string
type binop = Plus | Minus | Times | Div
type stm = 
  CompoundStm of stm * stm |
  AssignStm of id * exp |
  PrintStm of exp list
and exp = 
  IdExp of id |
  NumExp of int |
  OpExp of exp * binop * exp |
  EseqExp of stm * exp

let prog = 
 CompoundStm(AssignStm("a",OpExp(NumExp 5, Plus, NumExp 3)),
  CompoundStm(AssignStm("b",
      EseqExp(PrintStm[IdExp "a";OpExp(IdExp "a", Minus,NumExp 1)],
           OpExp(NumExp 10, Times, IdExp"a"))),
   PrintStm[IdExp "b"]))

let rec maxargs (stm: stm): int = 
  match stm with
  | CompoundStm (a, b) -> max (maxargs a) (maxargs b)
  | AssignStm (_, e) -> 
    (match e with
      | IdExp _ | NumExp _ | OpExp (_, _, _) -> 0
      | EseqExp (s, _) -> maxargs s
    )

  | PrintStm a -> List.length a


  
  
  
  