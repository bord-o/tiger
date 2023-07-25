(* File created Thu Jul 20 14:52:58 2023 *)

structure HashTable  =
struct
  type key = string
  type cell = (string * int) list
  type table = (cell ref) array

  type t = table

  val size = 1024


  fun snd (a, b) = b

  fun fst (a, b) = a


  fun hash (s) =
    let

      val chars: char list = String.explode s
      val tot = ref 0
    in
      (List.app (fn c => tot := !tot + Char.ord (c)) chars);
      !tot mod size
    end


  fun create (): t =
    Array.tabulate (size, (fn i => ref []))

  fun lookup (tbl: t, k: string) =
    let
      val h = hash (k)
      val cellList = Array.sub (tbl, h)
      val found = (List.find (fn (key, _) => key = k) (!cellList))
    in
      case found of
        NONE => NONE
      | SOME (a, b) => SOME (b)
    end

  fun insert (tbl: t, k, v) =
    let
      val h = hash (k)
      val cellList = Array.sub (tbl, h)
    in
      case lookup (tbl, k) of
        SOME x => tbl
      | NONE => (cellList := ((k, v) :: (!cellList)); tbl)
    end


  fun remove (k, tbl: t) =
    let
      val valInside = Option.isSome (lookup (tbl, k)) (* true if in table*)
    in
      case valInside of
        true =>
          (
           let
             val h = hash (k)
             val cell = Array.sub (tbl, h)
           in
             cell := (List.filter (fn (key, value) => key <> k) (!cell))
           end)
      | false => ()

    end

    val look = lookup
    val empty = create ()
    val enter = insert
end

(*
structure T = HashTable

val _ =
  let
    val tb: T.t = T.create ()
    val hs = T.hash ("axsdf")
    val _ =

      ( T.insert ("test", 10, tb)
      ; T.insert ("test2", 22, tb)
      ; T.remove ("test2", tb)
      ; T.insert ("test2", 22, tb)
      )

    val h: int = Option.valOf (T.lookup ("test2", tb))

  in


    (print o Int.toString) h


  end
  *)
