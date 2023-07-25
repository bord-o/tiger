signature SYMBOL =
sig
  eqtype symbol
  val symbol : string -> symbol
  val name : symbol -> string
  type 'a table
  val empty : 'a table
  (*
  val enter : 'a table * symbol * 'a -> 'a table
  val look  : 'a table * symbol -> 'a option
  *)
end

structure Symbol :> SYMBOL =
struct
  

  type symbol = string * int
  type 'a table = HashTable.table
 
  exception Symbol
  val nextsym = ref 0
  val sizeHint = 128
  val empty = HashTable.empty
  
  val hashtable : HashTable.table = HashTable.create ()
  
  fun symbol name =
      case HashTable.look (hashtable, name)
       of SOME i => (name,i)
        | NONE => let val i = !nextsym
	           in nextsym := i+1;
		      HashTable.insert (hashtable, name,i);
		      (name,i)
		  end

  fun name(s,_) = s

end
