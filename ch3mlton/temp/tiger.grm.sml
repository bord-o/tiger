functor TigerLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : Tiger_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct
(*#line 1.2 "tiger.grm"*)structure A = Absyn


(*#line 14.1 "tiger.grm.sml"*)
end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\000\000\000\000\
\\001\000\001\000\171\000\005\000\171\000\007\000\171\000\008\000\051\000\
\\009\000\171\000\010\000\050\000\011\000\171\000\012\000\049\000\
\\013\000\171\000\014\000\201\000\015\000\171\000\016\000\171\000\
\\017\000\171\000\018\000\171\000\019\000\171\000\020\000\171\000\
\\021\000\171\000\022\000\171\000\023\000\171\000\024\000\171\000\
\\025\000\171\000\026\000\171\000\027\000\201\000\030\000\171\000\
\\031\000\171\000\034\000\171\000\035\000\171\000\037\000\171\000\
\\038\000\171\000\041\000\048\000\042\000\171\000\043\000\171\000\
\\044\000\171\000\000\000\
\\001\000\001\000\182\000\005\000\182\000\007\000\182\000\009\000\182\000\
\\011\000\182\000\013\000\182\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\025\000\182\000\026\000\182\000\
\\030\000\182\000\031\000\182\000\034\000\182\000\035\000\182\000\
\\037\000\182\000\038\000\182\000\042\000\182\000\043\000\182\000\
\\044\000\182\000\000\000\
\\001\000\001\000\183\000\005\000\183\000\007\000\183\000\009\000\183\000\
\\011\000\183\000\013\000\183\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\025\000\183\000\026\000\183\000\
\\030\000\183\000\031\000\183\000\034\000\183\000\035\000\183\000\
\\037\000\183\000\038\000\183\000\042\000\183\000\043\000\183\000\
\\044\000\183\000\000\000\
\\001\000\001\000\184\000\005\000\184\000\007\000\184\000\009\000\184\000\
\\011\000\184\000\013\000\184\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\025\000\184\000\026\000\184\000\
\\030\000\184\000\031\000\184\000\034\000\184\000\035\000\184\000\
\\037\000\184\000\038\000\184\000\042\000\184\000\043\000\184\000\
\\044\000\184\000\000\000\
\\001\000\001\000\185\000\005\000\185\000\007\000\185\000\009\000\185\000\
\\011\000\185\000\013\000\185\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\025\000\185\000\026\000\185\000\
\\030\000\185\000\031\000\185\000\034\000\185\000\035\000\185\000\
\\037\000\185\000\038\000\185\000\042\000\185\000\043\000\185\000\
\\044\000\185\000\000\000\
\\001\000\001\000\186\000\005\000\186\000\007\000\186\000\009\000\186\000\
\\011\000\186\000\013\000\186\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\025\000\186\000\026\000\186\000\
\\030\000\186\000\031\000\186\000\034\000\186\000\035\000\186\000\
\\037\000\186\000\038\000\186\000\042\000\186\000\043\000\186\000\
\\044\000\186\000\000\000\
\\001\000\001\000\187\000\005\000\187\000\007\000\187\000\009\000\187\000\
\\011\000\187\000\013\000\187\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\025\000\187\000\026\000\187\000\
\\030\000\187\000\031\000\187\000\034\000\187\000\035\000\187\000\
\\037\000\187\000\038\000\187\000\042\000\187\000\043\000\187\000\
\\044\000\187\000\000\000\
\\001\000\001\000\191\000\005\000\191\000\007\000\191\000\009\000\191\000\
\\010\000\018\000\011\000\191\000\013\000\191\000\014\000\202\000\
\\015\000\191\000\016\000\191\000\017\000\191\000\018\000\191\000\
\\019\000\191\000\020\000\191\000\021\000\191\000\022\000\191\000\
\\023\000\191\000\024\000\191\000\025\000\191\000\026\000\191\000\
\\027\000\202\000\030\000\191\000\031\000\191\000\034\000\191\000\
\\035\000\191\000\037\000\191\000\038\000\191\000\042\000\191\000\
\\043\000\191\000\044\000\191\000\000\000\
\\001\000\002\000\017\000\003\000\016\000\004\000\015\000\008\000\014\000\
\\009\000\047\000\016\000\013\000\029\000\012\000\032\000\011\000\
\\033\000\010\000\036\000\009\000\040\000\008\000\041\000\007\000\000\000\
\\001\000\002\000\017\000\003\000\016\000\004\000\015\000\008\000\014\000\
\\016\000\013\000\029\000\012\000\032\000\011\000\033\000\010\000\
\\036\000\009\000\040\000\008\000\041\000\007\000\000\000\
\\001\000\002\000\042\000\000\000\
\\001\000\002\000\054\000\000\000\
\\001\000\002\000\070\000\000\000\
\\001\000\002\000\071\000\000\000\
\\001\000\002\000\072\000\000\000\
\\001\000\002\000\105\000\012\000\104\000\028\000\103\000\000\000\
\\001\000\002\000\107\000\000\000\
\\001\000\002\000\113\000\000\000\
\\001\000\002\000\126\000\000\000\
\\001\000\002\000\131\000\000\000\
\\001\000\002\000\135\000\000\000\
\\001\000\005\000\096\000\013\000\095\000\000\000\
\\001\000\005\000\100\000\009\000\099\000\000\000\
\\001\000\006\000\090\000\027\000\089\000\000\000\
\\001\000\006\000\121\000\000\000\
\\001\000\006\000\130\000\019\000\129\000\000\000\
\\001\000\007\000\033\000\009\000\076\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\019\000\028\000\020\000\027\000\
\\021\000\026\000\022\000\025\000\023\000\024\000\024\000\023\000\
\\025\000\022\000\026\000\021\000\000\000\
\\001\000\007\000\033\000\011\000\084\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\019\000\028\000\020\000\027\000\
\\021\000\026\000\022\000\025\000\023\000\024\000\024\000\023\000\
\\025\000\022\000\026\000\021\000\000\000\
\\001\000\007\000\033\000\011\000\098\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\019\000\028\000\020\000\027\000\
\\021\000\026\000\022\000\025\000\023\000\024\000\024\000\023\000\
\\025\000\022\000\026\000\021\000\000\000\
\\001\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\030\000\075\000\000\000\
\\001\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\034\000\111\000\000\000\
\\001\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\035\000\074\000\000\000\
\\001\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\035\000\132\000\000\000\
\\001\000\008\000\091\000\000\000\
\\001\000\009\000\120\000\000\000\
\\001\000\013\000\127\000\000\000\
\\001\000\014\000\020\000\027\000\019\000\000\000\
\\001\000\019\000\088\000\000\000\
\\001\000\019\000\097\000\000\000\
\\001\000\019\000\124\000\000\000\
\\001\000\019\000\138\000\000\000\
\\001\000\027\000\073\000\000\000\
\\001\000\027\000\119\000\000\000\
\\001\000\037\000\069\000\042\000\041\000\043\000\040\000\044\000\039\000\000\000\
\\001\000\038\000\101\000\000\000\
\\001\000\039\000\117\000\000\000\
\\001\000\042\000\041\000\043\000\040\000\044\000\039\000\000\000\
\\142\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\143\000\002\000\017\000\003\000\016\000\004\000\015\000\008\000\014\000\
\\016\000\013\000\029\000\012\000\032\000\011\000\033\000\010\000\
\\036\000\009\000\040\000\008\000\041\000\007\000\000\000\
\\143\000\002\000\079\000\000\000\
\\143\000\002\000\110\000\000\000\
\\144\000\000\000\
\\145\000\000\000\
\\146\000\000\000\
\\147\000\000\000\
\\148\000\000\000\
\\149\000\000\000\
\\150\000\000\000\
\\151\000\000\000\
\\152\000\000\000\
\\153\000\005\000\136\000\000\000\
\\154\000\000\000\
\\155\000\000\000\
\\156\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\157\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\158\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\159\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\160\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\161\000\000\000\
\\162\000\000\000\
\\163\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\164\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\165\000\000\000\
\\166\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\167\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\168\000\000\000\
\\169\000\000\000\
\\170\000\000\000\
\\172\000\000\000\
\\173\000\000\000\
\\174\000\000\000\
\\175\000\000\000\
\\176\000\000\000\
\\177\000\000\000\
\\178\000\017\000\030\000\018\000\029\000\000\000\
\\179\000\017\000\030\000\018\000\029\000\000\000\
\\180\000\000\000\
\\181\000\000\000\
\\188\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\189\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\190\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\000\000\
\\192\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\000\000\
\\193\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\000\000\
\\194\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\031\000\112\000\000\000\
\\195\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\000\000\
\\196\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\000\000\
\\197\000\000\000\
\\198\000\000\000\
\\199\000\000\000\
\\200\000\007\000\033\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\000\000\
\\203\000\000\000\
\\204\000\039\000\115\000\000\000\
\\205\000\000\000\
\"
val actionRowNumbers =
"\010\000\008\000\037\000\084\000\
\\048\000\079\000\098\000\047\000\
\\011\000\010\000\010\000\010\000\
\\009\000\082\000\081\000\001\000\
\\010\000\010\000\012\000\010\000\
\\010\000\010\000\010\000\010\000\
\\010\000\010\000\010\000\010\000\
\\010\000\010\000\010\000\010\000\
\\056\000\055\000\054\000\044\000\
\\052\000\013\000\014\000\015\000\
\\042\000\032\000\030\000\080\000\
\\027\000\083\000\078\000\050\000\
\\010\000\049\000\028\000\092\000\
\\101\000\090\000\089\000\005\000\
\\004\000\007\000\006\000\003\000\
\\002\000\088\000\087\000\086\000\
\\085\000\100\000\053\000\049\000\
\\038\000\024\000\034\000\010\000\
\\010\000\010\000\099\000\022\000\
\\073\000\039\000\029\000\023\000\
\\071\000\070\000\103\000\045\000\
\\068\000\069\000\016\000\010\000\
\\017\000\051\000\031\000\095\000\
\\094\000\077\000\018\000\010\000\
\\102\000\076\000\010\000\097\000\
\\057\000\046\000\051\000\058\000\
\\064\000\043\000\035\000\063\000\
\\025\000\010\000\010\000\040\000\
\\074\000\010\000\072\000\019\000\
\\036\000\010\000\026\000\020\000\
\\033\000\093\000\010\000\091\000\
\\060\000\059\000\065\000\010\000\
\\021\000\061\000\010\000\075\000\
\\066\000\041\000\051\000\096\000\
\\010\000\062\000\067\000\000\000"
val gotoT =
"\
\\009\000\004\000\013\000\003\000\014\000\002\000\015\000\001\000\
\\016\000\139\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\036\000\003\000\035\000\004\000\034\000\007\000\033\000\
\\008\000\032\000\000\000\
\\000\000\
\\009\000\041\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\042\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\043\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\044\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\050\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\051\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\009\000\053\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\054\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\055\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\056\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\057\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\058\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\059\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\060\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\061\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\062\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\063\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\064\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\065\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\002\000\066\000\004\000\034\000\007\000\033\000\008\000\032\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\076\000\012\000\075\000\000\000\
\\009\000\078\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\001\000\081\000\009\000\080\000\011\000\079\000\013\000\003\000\
\\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\085\000\009\000\084\000\010\000\083\000\013\000\003\000\
\\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\090\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\091\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\092\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\005\000\100\000\000\000\
\\009\000\104\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\001\000\107\000\006\000\106\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\112\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\009\000\114\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\107\000\006\000\116\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\120\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\009\000\121\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\009\000\123\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\126\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\131\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\009\000\132\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\009\000\135\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\107\000\006\000\137\000\000\000\
\\000\000\
\\009\000\138\000\013\000\003\000\014\000\002\000\015\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\"
val numstates = 140
val numrules = 64
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle General.Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(List.map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit ->  unit | STRING of unit ->  (string) | INT of unit ->  (int) | ID of unit ->  (string) | program of unit ->  (A.exp) | lvalue_not_id of unit ->  (A.var) | lvalue of unit ->  (A.var) | recordexp of unit ->  (A.exp) | recordargs of unit ->  ( ( A.symbol * A.exp * A.pos )  list) | explist of unit ->  (A.exp list) | optionalexp of unit ->  (A.exp) | exp of unit ->  (A.exp) | fundec of unit ->  (A.dec) | vardec of unit ->  (A.dec) | tyfields of unit ->  (A.field list) | ty of unit ->  (A.ty) | tydec of unit ->  (A.dec) | decs of unit ->  (A.dec list) | dec of unit ->  (A.dec)
end
type svalue = MlyValue.svalue
type result = A.exp
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn (T 31) => true | (T 32) => true | (T 33) => true | (T 39) => true | (T 35) => true | (T 36) => true | (T 37) => true | (T 41) => true | (T 42) => true | (T 43) => true | (T 27) => true | (T 28) => true | (T 29) => true | (T 30) => true | (T 34) => true | (T 38) => true | (T 40) => true | _ => false
val preferred_change : (term list * term list) list = 
(nil
,nil
 $$ (T 29))::
(nil
,nil
 $$ (T 30))::
(nil
,nil
 $$ (T 7))::
nil
val noShift = 
fn (T 0) => true | _ => false
val showTerminal =
fn (T 0) => "EOF"
  | (T 1) => "ID"
  | (T 2) => "INT"
  | (T 3) => "STRING"
  | (T 4) => "COMMA"
  | (T 5) => "COLON"
  | (T 6) => "SEMICOLON"
  | (T 7) => "LPAREN"
  | (T 8) => "RPAREN"
  | (T 9) => "LBRACK"
  | (T 10) => "RBRACK"
  | (T 11) => "LBRACE"
  | (T 12) => "RBRACE"
  | (T 13) => "DOT"
  | (T 14) => "PLUS"
  | (T 15) => "MINUS"
  | (T 16) => "TIMES"
  | (T 17) => "DIVIDE"
  | (T 18) => "EQ"
  | (T 19) => "NEQ"
  | (T 20) => "LT"
  | (T 21) => "LE"
  | (T 22) => "GT"
  | (T 23) => "GE"
  | (T 24) => "AND"
  | (T 25) => "OR"
  | (T 26) => "ASSIGN"
  | (T 27) => "ARRAY"
  | (T 28) => "IF"
  | (T 29) => "THEN"
  | (T 30) => "ELSE"
  | (T 31) => "WHILE"
  | (T 32) => "FOR"
  | (T 33) => "TO"
  | (T 34) => "DO"
  | (T 35) => "LET"
  | (T 36) => "IN"
  | (T 37) => "END"
  | (T 38) => "OF"
  | (T 39) => "BREAK"
  | (T 40) => "NIL"
  | (T 41) => "FUNCTION"
  | (T 42) => "VAR"
  | (T 43) => "TYPE"
  | (T 44) => "UMINUS"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn (T 1) => MlyValue.ID(fn () => ("bogus")) | 
(T 2) => MlyValue.INT(fn () => (1)) | 
(T 3) => MlyValue.STRING(fn () => ("")) | 
_ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 44) $$ (T 43) $$ (T 42) $$ (T 41) $$ (T 40) $$ (T 39) $$ (T 38) $$ (T 37) $$ (T 36) $$ (T 35) $$ (T 34) $$ (T 33) $$ (T 32) $$ (T 31) $$ (T 30) $$ (T 29) $$ (T 28) $$ (T 27) $$ (T 26) $$ (T 25) $$ (T 24) $$ (T 23) $$ (T 22) $$ (T 21) $$ (T 20) $$ (T 19) $$ (T 18) $$ (T 17) $$ (T 16) $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12) $$ (T 11) $$ (T 10) $$ (T 9) $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 5) $$ (T 4) $$ (T 0)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.program (fn _ => let val  (exp as exp1) = exp1 ()
 in ((*#line 55.70 "tiger.grm"*)exp(*#line 583.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 15, ( result, exp1left, exp1right), rest671)
end
|  ( 1, ( rest671)) => let val  result = MlyValue.ntVOID (fn _ => ((*#line 57.70 "tiger.grm"*)(*#line 589.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 0, ( result, defaultPos, defaultPos), rest671)
end
|  ( 2, ( ( _, ( MlyValue.dec dec1, dec1left, dec1right)) :: rest671)) => let val  result = MlyValue.decs (fn _ => let val  (dec as dec1) = dec1 ()
 in ((*#line 60.70 "tiger.grm"*)[dec](*#line 593.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, dec1left, dec1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.dec dec1, _, dec1right)) :: ( _, ( MlyValue.decs decs1, decs1left, _)) :: rest671)) => let val  result = MlyValue.decs (fn _ => let val  (decs as decs1) = decs1 ()
 val  (dec as dec1) = dec1 ()
 in ((*#line 61.70 "tiger.grm"*)case (dec, decs) of
                                                                        (A.TypeDec [t], A.TypeDec ts :: ds) => A.TypeDec (t :: ts) :: ds
                                                                      | (A.FunctionDec [f], A.FunctionDec fs :: ds) => A.FunctionDec (f :: fs) :: ds
                                                                      | (d, ds) => d :: ds
                                                                    (*#line 599.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 2, ( result, decs1left, dec1right), rest671)
end
|  ( 4, ( ( _, ( MlyValue.tydec tydec1, tydec1left, tydec1right)) :: rest671)) => let val  result = MlyValue.dec (fn _ => let val  (tydec as tydec1) = tydec1 ()
 in ((*#line 67.70 "tiger.grm"*)tydec(*#line 610.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 1, ( result, tydec1left, tydec1right), rest671)
end
|  ( 5, ( ( _, ( MlyValue.vardec vardec1, vardec1left, vardec1right)) :: rest671)) => let val  result = MlyValue.dec (fn _ => let val  (vardec as vardec1) = vardec1 ()
 in ((*#line 68.70 "tiger.grm"*)vardec(*#line 616.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 1, ( result, vardec1left, vardec1right), rest671)
end
|  ( 6, ( ( _, ( MlyValue.fundec fundec1, fundec1left, fundec1right)) :: rest671)) => let val  result = MlyValue.dec (fn _ => let val  (fundec as fundec1) = fundec1 ()
 in ((*#line 69.70 "tiger.grm"*)fundec(*#line 622.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 1, ( result, fundec1left, fundec1right), rest671)
end
|  ( 7, ( ( _, ( MlyValue.ty ty1, _, ty1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, TYPE1left, TYPEright)) :: rest671)) => let val  result = MlyValue.tydec (fn _ => let val  (ID as ID1) = ID1 ()
 val  (ty as ty1) = ty1 ()
 in ((*#line 71.70 "tiger.grm"*)A.TypeDec [{ name = Symbol.symbol ID, ty = ty, pos = TYPEright }](*#line 628.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 3, ( result, TYPE1left, ty1right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.ID ID1, (IDleft as ID1left), ID1right)) :: rest671)) => let val  result = MlyValue.ty (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 73.70 "tiger.grm"*)A.NameTy (Symbol.symbol ID, IDleft)(*#line 635.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, ID1left, ID1right), rest671)
end
|  ( 9, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( MlyValue.tyfields tyfields1, _, _)) :: ( _, ( _, LBRACE1left, _)) :: rest671)) => let val  result = MlyValue.ty (fn _ => let val  (tyfields as tyfields1) = tyfields1 ()
 in ((*#line 74.70 "tiger.grm"*)A.RecordTy tyfields(*#line 641.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, LBRACE1left, RBRACE1right), rest671)
end
|  ( 10, ( ( _, ( MlyValue.ID ID1, IDleft, ID1right)) :: _ :: ( _, ( _, ARRAY1left, _)) :: rest671)) => let val  result = MlyValue.ty (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 75.70 "tiger.grm"*)A.ArrayTy (Symbol.symbol ID, IDleft)(*#line 647.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 4, ( result, ARRAY1left, ID1right), rest671)
end
|  ( 11, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: ( _, ( _, _, COLONright)) :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.tyfields (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 in ((*#line 77.70 "tiger.grm"*)[{ name = Symbol.symbol ID1, typ = Symbol.symbol ID2, escape = ref true, pos = COLONright }](*#line 653.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 5, ( result, ID1left, ID2right), rest671)
end
|  ( 12, ( ( _, ( MlyValue.tyfields tyfields1, _, tyfields1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: ( _, ( _, _, COLONright)) :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.tyfields (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 in ((*#line 78.70 "tiger.grm"*){ name = Symbol.symbol ID1, typ = Symbol.symbol ID2, escape = ref true, pos = COLONright } :: tyfields (*#line 660.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 5, ( result, ID1left, tyfields1right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.tyfields (fn _ => let val  empty1 = empty1 ()
 in ((*#line 79.70 "tiger.grm"*)[](*#line 668.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 5, ( result, empty1left, empty1right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left, VARright)) :: rest671)) => let val  result = MlyValue.vardec (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 81.70 "tiger.grm"*)A.VarDec { name = Symbol.symbol ID, typ = NONE, init = exp, pos = VARright, escape = ref true }(*#line 674.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 6, ( result, VAR1left, exp1right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID2, ID2left, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left, VARright)) :: rest671)) => let val  result = MlyValue.vardec (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 82.70 "tiger.grm"*)A.VarDec { name = Symbol.symbol ID1, typ = SOME (Symbol.symbol ID2, ID2left), init = exp, pos = VARright, escape = ref true }(*#line 681.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 6, ( result, VAR1left, exp1right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: _ :: ( _, ( MlyValue.tyfields tyfields1, _, _)) :: ( _, ( _, _, LPARENright)) :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.fundec (fn _ => let val  (ID as ID1) = ID1 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 84.70 "tiger.grm"*)A.FunctionDec [{ name = Symbol.symbol ID, params = tyfields, result = NONE, body = exp, pos = LPARENright }](*#line 689.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID2, ID2left, _)) :: _ :: _ :: ( _, ( MlyValue.tyfields tyfields1, _, _)) :: ( _, ( _, _, LPARENright)) :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.fundec (fn _ => let val  ID1 = ID1 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 85.70 "tiger.grm"*)A.FunctionDec [{ name = Symbol.symbol ID1, params = tyfields, result = SOME (Symbol.symbol ID2, ID2left), body = exp, pos = LPARENright }](*#line 697.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 7, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 18, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.optionalexp (fn _ => let val  (exp as exp1) = exp1 ()
 in ((*#line 88.70 "tiger.grm"*)exp(*#line 706.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 9, ( result, exp1left, exp1right), rest671)
end
|  ( 19, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.optionalexp (fn _ => let val  empty1 = empty1 ()
 in ((*#line 89.70 "tiger.grm"*)A.NilExp(*#line 712.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 9, ( result, empty1left, empty1right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.explist (fn _ => let val  empty1 = empty1 ()
 in ((*#line 91.70 "tiger.grm"*)nil(*#line 718.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 10, ( result, empty1left, empty1right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.explist (fn _ => let val  (exp as exp1) = exp1 ()
 in ((*#line 92.70 "tiger.grm"*)exp :: nil(*#line 724.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 10, ( result, exp1left, exp1right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.explist explist1, explist1left, _)) :: rest671)) => let val  result = MlyValue.explist (fn _ => let val  (explist as explist1) = explist1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 93.70 "tiger.grm"*)exp :: explist(*#line 730.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 10, ( result, explist1left, exp1right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.recordargs (fn _ => let val  empty1 = empty1 ()
 in ((*#line 95.70 "tiger.grm"*)nil(*#line 737.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, empty1left, empty1right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, EQright)) :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.recordargs (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 96.70 "tiger.grm"*)(Symbol.symbol ID, exp, EQright) :: nil(*#line 743.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, ID1left, exp1right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, EQright)) :: ( _, ( MlyValue.ID ID1, _, _)) :: _ :: ( _, ( MlyValue.recordargs recordargs1, recordargs1left, _)) :: rest671)) => let val  result = MlyValue.recordargs (fn _ => let val  (recordargs as recordargs1) = recordargs1 ()
 val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 97.70 "tiger.grm"*)(Symbol.symbol ID, exp, EQright) :: recordargs(*#line 750.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 11, ( result, recordargs1left, exp1right), rest671)
end
|  ( 26, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.explist explist1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let val  result = MlyValue.recordexp (fn _ => let val  (ID as ID1) = ID1 ()
 val  (explist as explist1) = explist1 ()
 in ((*#line 100.70 "tiger.grm"*)A.CallExp { func = Symbol.symbol ID, args = explist, pos = IDright }(*#line 758.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 12, ( result, ID1left, RPAREN1right), rest671)
end
|  ( 27, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( MlyValue.recordargs recordargs1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let val  result = MlyValue.recordexp (fn _ => let val  (ID as ID1) = ID1 ()
 val  (recordargs as recordargs1) = recordargs1 ()
 in ((*#line 101.70 "tiger.grm"*)A.RecordExp { fields = recordargs, typ = Symbol.symbol ID, pos = IDright }(*#line 765.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 12, ( result, ID1left, RBRACE1right), rest671)
end
|  ( 28, ( ( _, ( _, _, NIL1right)) :: ( _, ( MlyValue.ID ID1, ID1left, IDright)) :: rest671)) => let val  result = MlyValue.recordexp (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 102.70 "tiger.grm"*)A.RecordExp { fields = [], typ = Symbol.symbol ID, pos = IDright }(*#line 772.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 12, ( result, ID1left, NIL1right), rest671)
end
|  ( 29, ( ( _, ( MlyValue.ID ID1, (IDleft as ID1left), ID1right)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 104.70 "tiger.grm"*)A.VarExp (A.SimpleVar (Symbol.symbol ID, IDleft))(*#line 778.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, ID1left, ID1right), rest671)
end
|  ( 30, ( ( _, ( _, NIL1left, NIL1right)) :: rest671)) => let val  result = MlyValue.exp (fn _ => ((*#line 105.70 "tiger.grm"*)A.NilExp(*#line 784.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 8, ( result, NIL1left, NIL1right), rest671)
end
|  ( 31, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, MINUS1left, MINUSright)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (exp as exp1) = exp1 ()
 in ((*#line 106.70 "tiger.grm"*)A.OpExp {left = A.IntExp 0, oper = A.MinusOp, right = exp, pos = MINUSright}(*#line 788.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, MINUS1left, exp1right), rest671)
end
|  ( 32, ( ( _, ( MlyValue.INT INT1, INT1left, INT1right)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (INT as INT1) = INT1 ()
 in ((*#line 107.70 "tiger.grm"*)A.IntExp INT(*#line 794.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, INT1left, INT1right), rest671)
end
|  ( 33, ( ( _, ( MlyValue.STRING STRING1, STRING1left, (STRINGright as STRING1right))) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (STRING as STRING1) = STRING1 ()
 in ((*#line 108.70 "tiger.grm"*)A.StringExp (STRING, STRINGright)(*#line 800.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, STRING1left, STRING1right), rest671)
end
|  ( 34, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => ((*#line 109.70 "tiger.grm"*)A.SeqExp [](*#line 806.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 8, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 35, ( ( _, ( MlyValue.recordexp recordexp1, recordexp1left, recordexp1right)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (recordexp as recordexp1) = recordexp1 ()
 in ((*#line 110.70 "tiger.grm"*)recordexp(*#line 810.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, recordexp1left, recordexp1right), rest671)
end
|  ( 36, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, PLUSleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 111.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.PlusOp, right = exp2, pos = PLUSleft}(*#line 816.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 37, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, MINUSleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 112.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.MinusOp, right = exp2, pos = MINUSleft}(*#line 823.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 38, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, TIMESleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 113.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.TimesOp, right = exp2, pos = TIMESleft}(*#line 830.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 39, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, DIVIDEleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 114.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.DivideOp, right = exp2, pos = DIVIDEleft}(*#line 837.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, EQleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 115.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.EqOp, right = exp2, pos = EQleft}(*#line 844.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, NEQleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 116.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.NeqOp, right = exp2, pos = NEQleft}(*#line 851.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 42, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, GTleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 117.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.GtOp, right = exp2, pos = GTleft}(*#line 858.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 43, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, GEleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 118.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.GeOp, right = exp2, pos = GEleft}(*#line 865.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 44, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, LTleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 119.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.LtOp, right = exp2, pos = LTleft}(*#line 872.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 45, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, LEleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 120.70 "tiger.grm"*)A.OpExp {left = exp1, oper = A.LeOp, right = exp2, pos = LEleft}(*#line 879.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 46, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, ANDleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 121.70 "tiger.grm"*)A.IfExp { test = exp1, then' = exp2, else' = SOME (A.IntExp 0), pos = ANDleft }(*#line 886.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 47, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, ORleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 122.70 "tiger.grm"*)A.IfExp { test = exp1, then' = A.IntExp 1, else' = SOME exp2, pos = ORleft }(*#line 893.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 48, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, ( MlyValue.exp exp1, _, _)) :: ( _, ( _, _, LBRACKright)) :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 123.70 "tiger.grm"*)A.ArrayExp { typ = Symbol.symbol ID, size = exp1, init = exp2, pos = LBRACKright }(*#line 900.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, ID1left, exp2right), rest671)
end
|  ( 49, ( ( _, ( MlyValue.lvalue_not_id lvalue_not_id1, lvalue_not_id1left, lvalue_not_id1right)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (lvalue_not_id as lvalue_not_id1) = lvalue_not_id1 ()
 in ((*#line 124.70 "tiger.grm"*)A.VarExp lvalue_not_id(*#line 908.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, lvalue_not_id1left, lvalue_not_id1right), rest671)
end
|  ( 50, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, _, ASSIGNright)) :: ( _, ( MlyValue.lvalue lvalue1, lvalue1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (lvalue as lvalue1) = lvalue1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 125.70 "tiger.grm"*)A.AssignExp { var = lvalue, exp = exp, pos = ASSIGNright }(*#line 914.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, lvalue1left, exp1right), rest671)
end
|  ( 51, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( MlyValue.exp exp2, _, _)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) :: ( _, ( _, IF1left, IFright)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in ((*#line 126.70 "tiger.grm"*)A.IfExp { test = exp1, then' = exp2, else' = SOME exp3, pos = IFright }(*#line 921.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, IF1left, exp3right), rest671)
end
|  ( 52, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) :: ( _, ( _, IF1left, IFright)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 127.70 "tiger.grm"*)A.IfExp { test = exp1, then' = exp2, else' = NONE, pos = IFright }(*#line 929.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, IF1left, exp2right), rest671)
end
|  ( 53, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) :: ( _, ( _, WHILE1left, WHILEright)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 128.70 "tiger.grm"*)A.WhileExp { test = exp1, body = exp2, pos = WHILEright }(*#line 936.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, WHILE1left, exp2right), rest671)
end
|  ( 54, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( MlyValue.exp exp2, _, _)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FOR1left, FORright)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in ((*#line 129.70 "tiger.grm"*)A.ForExp { var = Symbol.symbol ID, lo = exp1, hi = exp2, body = exp3, pos = FORright, escape = ref true }(*#line 943.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, FOR1left, exp3right), rest671)
end
|  ( 55, ( ( _, ( _, _, END1right)) :: ( _, ( MlyValue.optionalexp optionalexp1, _, _)) :: _ :: ( _, ( MlyValue.decs decs1, _, _)) :: ( _, ( _, LET1left, LETright)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (decs as decs1) = decs1 ()
 val  (optionalexp as optionalexp1) = optionalexp1 ()
 in ((*#line 130.70 "tiger.grm"*)A.LetExp { decs = rev decs, body = optionalexp, pos = LETright }(*#line 952.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, LET1left, END1right), rest671)
end
|  ( 56, ( ( _, ( _, BREAK1left, (BREAKright as BREAK1right))) :: rest671)) => let val  result = MlyValue.exp (fn _ => ((*#line 131.70 "tiger.grm"*)A.BreakExp BREAKright(*#line 959.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 8, ( result, BREAK1left, BREAK1right), rest671)
end
|  ( 57, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.exp exp1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (exp as exp1) = exp1 ()
 in ((*#line 132.70 "tiger.grm"*)exp(*#line 963.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 58, ( ( _, ( MlyValue.exp exp2, exp2left, exp2right)) :: _ :: ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 133.70 "tiger.grm"*)case exp2 of
                                                                        A.SeqExp [] => A.SeqExp ((exp1, exp1right) :: [ (A.SeqExp [], exp2left) ])
                                                                      | A.SeqExp exps => A.SeqExp ((exp1, exp1right) :: exps)
                                                                      | _ => A.SeqExp [ (exp1, exp1right), (exp2, exp2right) ]
                                                                    (*#line 969.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 8, ( result, exp1left, exp2right), rest671)
end
|  ( 59, ( ( _, ( MlyValue.ID ID1, (IDleft as ID1left), ID1right)) :: rest671)) => let val  result = MlyValue.lvalue (fn _ => let val  (ID as ID1) = ID1 ()
 in ((*#line 140.70 "tiger.grm"*)A.SimpleVar (Symbol.symbol ID, IDleft)(*#line 980.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 13, ( result, ID1left, ID1right), rest671)
end
|  ( 60, ( ( _, ( MlyValue.lvalue_not_id lvalue_not_id1, lvalue_not_id1left, lvalue_not_id1right)) :: rest671)) => let val  result = MlyValue.lvalue (fn _ => let val  (lvalue_not_id as lvalue_not_id1) = lvalue_not_id1 ()
 in ((*#line 141.70 "tiger.grm"*)lvalue_not_id(*#line 986.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 13, ( result, lvalue_not_id1left, lvalue_not_id1right), rest671)
end
|  ( 61, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: ( _, ( _, _, DOTright)) :: ( _, ( MlyValue.lvalue lvalue1, lvalue1left, _)) :: rest671)) => let val  result = MlyValue.lvalue_not_id (fn _ => let val  (lvalue as lvalue1) = lvalue1 ()
 val  (ID as ID1) = ID1 ()
 in ((*#line 143.70 "tiger.grm"*)A.FieldVar (lvalue, Symbol.symbol ID, DOTright)(*#line 992.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 14, ( result, lvalue1left, ID1right), rest671)
end
|  ( 62, ( ( _, ( _, _, (RBRACKright as RBRACK1right))) :: ( _, ( MlyValue.exp exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, (IDleft as ID1left), _)) :: rest671)) => let val  result = MlyValue.lvalue_not_id (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 144.70 "tiger.grm"*)A.SubscriptVar (A.SimpleVar (Symbol.symbol ID, IDleft), exp, RBRACKright)(*#line 999.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 14, ( result, ID1left, RBRACK1right), rest671)
end
|  ( 63, ( ( _, ( _, _, (RBRACKright as RBRACK1right))) :: ( _, ( MlyValue.exp exp1, _, _)) :: _ :: ( _, ( MlyValue.lvalue_not_id lvalue_not_id1, lvalue_not_id1left, _)) :: rest671)) => let val  result = MlyValue.lvalue_not_id (fn _ => let val  (lvalue_not_id as lvalue_not_id1) = lvalue_not_id1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 145.70 "tiger.grm"*)A.SubscriptVar (lvalue_not_id, exp, RBRACKright)(*#line 1006.1 "tiger.grm.sml"*)
)
end)
 in ( LrTable.NT 14, ( result, lvalue_not_id1left, RBRACK1right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.program x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a ()
end
end
structure Tokens : Tiger_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(ParserData.MlyValue.VOID,p1,p2))
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(ParserData.MlyValue.ID (fn () => i),p1,p2))
fun INT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(ParserData.MlyValue.INT (fn () => i),p1,p2))
fun STRING (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(ParserData.MlyValue.STRING (fn () => i),p1,p2))
fun COMMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(ParserData.MlyValue.VOID,p1,p2))
fun SEMICOLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(ParserData.MlyValue.VOID,p1,p2))
fun LPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(ParserData.MlyValue.VOID,p1,p2))
fun RPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(ParserData.MlyValue.VOID,p1,p2))
fun LBRACK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(ParserData.MlyValue.VOID,p1,p2))
fun RBRACK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(ParserData.MlyValue.VOID,p1,p2))
fun LBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(ParserData.MlyValue.VOID,p1,p2))
fun RBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(ParserData.MlyValue.VOID,p1,p2))
fun DOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(ParserData.MlyValue.VOID,p1,p2))
fun PLUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(ParserData.MlyValue.VOID,p1,p2))
fun MINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(ParserData.MlyValue.VOID,p1,p2))
fun TIMES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(ParserData.MlyValue.VOID,p1,p2))
fun DIVIDE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(ParserData.MlyValue.VOID,p1,p2))
fun EQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(ParserData.MlyValue.VOID,p1,p2))
fun NEQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(ParserData.MlyValue.VOID,p1,p2))
fun LT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(ParserData.MlyValue.VOID,p1,p2))
fun LE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(ParserData.MlyValue.VOID,p1,p2))
fun GT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(ParserData.MlyValue.VOID,p1,p2))
fun GE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(ParserData.MlyValue.VOID,p1,p2))
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(ParserData.MlyValue.VOID,p1,p2))
fun OR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(ParserData.MlyValue.VOID,p1,p2))
fun ASSIGN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(ParserData.MlyValue.VOID,p1,p2))
fun ARRAY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(ParserData.MlyValue.VOID,p1,p2))
fun WHILE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(ParserData.MlyValue.VOID,p1,p2))
fun FOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(ParserData.MlyValue.VOID,p1,p2))
fun TO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(ParserData.MlyValue.VOID,p1,p2))
fun DO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(ParserData.MlyValue.VOID,p1,p2))
fun OF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(ParserData.MlyValue.VOID,p1,p2))
fun BREAK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(ParserData.MlyValue.VOID,p1,p2))
fun NIL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(ParserData.MlyValue.VOID,p1,p2))
fun FUNCTION (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(ParserData.MlyValue.VOID,p1,p2))
fun VAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(ParserData.MlyValue.VOID,p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(ParserData.MlyValue.VOID,p1,p2))
fun UMINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(ParserData.MlyValue.VOID,p1,p2))
end
end
