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
(*#line 1.2 "tiger.grm"*)
(*#line 12.1 "tiger.grm.sml"*)
end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\000\000\000\000\
\\001\000\001\000\140\000\005\000\140\000\007\000\140\000\008\000\050\000\
\\009\000\140\000\010\000\049\000\011\000\140\000\012\000\048\000\
\\013\000\140\000\014\000\189\000\015\000\140\000\016\000\140\000\
\\018\000\140\000\019\000\140\000\020\000\140\000\021\000\140\000\
\\022\000\140\000\023\000\140\000\024\000\140\000\025\000\140\000\
\\026\000\140\000\027\000\140\000\028\000\189\000\031\000\140\000\
\\032\000\140\000\035\000\140\000\036\000\140\000\038\000\140\000\
\\039\000\140\000\043\000\140\000\044\000\140\000\045\000\140\000\000\000\
\\001\000\001\000\141\000\005\000\141\000\007\000\141\000\009\000\141\000\
\\011\000\141\000\013\000\141\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\026\000\141\000\027\000\141\000\
\\031\000\141\000\032\000\141\000\035\000\141\000\036\000\141\000\
\\038\000\141\000\039\000\141\000\043\000\141\000\044\000\141\000\
\\045\000\141\000\000\000\
\\001\000\001\000\142\000\005\000\142\000\007\000\142\000\009\000\142\000\
\\011\000\142\000\013\000\142\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\026\000\142\000\027\000\142\000\
\\031\000\142\000\032\000\142\000\035\000\142\000\036\000\142\000\
\\038\000\142\000\039\000\142\000\043\000\142\000\044\000\142\000\
\\045\000\142\000\000\000\
\\001\000\001\000\148\000\005\000\148\000\007\000\148\000\009\000\148\000\
\\011\000\148\000\013\000\148\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\026\000\148\000\027\000\148\000\
\\031\000\148\000\032\000\148\000\035\000\148\000\036\000\148\000\
\\038\000\148\000\039\000\148\000\043\000\148\000\044\000\148\000\
\\045\000\148\000\000\000\
\\001\000\001\000\149\000\005\000\149\000\007\000\149\000\009\000\149\000\
\\011\000\149\000\013\000\149\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\026\000\149\000\027\000\149\000\
\\031\000\149\000\032\000\149\000\035\000\149\000\036\000\149\000\
\\038\000\149\000\039\000\149\000\043\000\149\000\044\000\149\000\
\\045\000\149\000\000\000\
\\001\000\001\000\150\000\005\000\150\000\007\000\150\000\009\000\150\000\
\\011\000\150\000\013\000\150\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\026\000\150\000\027\000\150\000\
\\031\000\150\000\032\000\150\000\035\000\150\000\036\000\150\000\
\\038\000\150\000\039\000\150\000\043\000\150\000\044\000\150\000\
\\045\000\150\000\000\000\
\\001\000\001\000\151\000\005\000\151\000\007\000\151\000\009\000\151\000\
\\011\000\151\000\013\000\151\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\026\000\151\000\027\000\151\000\
\\031\000\151\000\032\000\151\000\035\000\151\000\036\000\151\000\
\\038\000\151\000\039\000\151\000\043\000\151\000\044\000\151\000\
\\045\000\151\000\000\000\
\\001\000\001\000\161\000\005\000\161\000\007\000\161\000\009\000\161\000\
\\010\000\190\000\011\000\161\000\013\000\161\000\014\000\190\000\
\\015\000\161\000\016\000\161\000\018\000\161\000\019\000\161\000\
\\020\000\161\000\021\000\161\000\022\000\161\000\023\000\161\000\
\\024\000\161\000\025\000\161\000\026\000\161\000\027\000\161\000\
\\028\000\190\000\031\000\161\000\032\000\161\000\035\000\161\000\
\\036\000\161\000\038\000\161\000\039\000\161\000\043\000\161\000\
\\044\000\161\000\045\000\161\000\000\000\
\\001\000\001\000\016\000\002\000\015\000\003\000\014\000\004\000\013\000\
\\008\000\012\000\017\000\011\000\030\000\010\000\033\000\009\000\
\\034\000\008\000\037\000\007\000\042\000\006\000\000\000\
\\001\000\002\000\041\000\000\000\
\\001\000\002\000\052\000\000\000\
\\001\000\002\000\069\000\000\000\
\\001\000\002\000\070\000\000\000\
\\001\000\002\000\071\000\000\000\
\\001\000\002\000\101\000\012\000\100\000\029\000\099\000\000\000\
\\001\000\002\000\103\000\000\000\
\\001\000\002\000\121\000\000\000\
\\001\000\002\000\126\000\000\000\
\\001\000\002\000\130\000\000\000\
\\001\000\006\000\087\000\028\000\086\000\000\000\
\\001\000\006\000\116\000\000\000\
\\001\000\006\000\125\000\020\000\124\000\000\000\
\\001\000\007\000\032\000\011\000\083\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\027\000\020\000\000\000\
\\001\000\007\000\032\000\011\000\094\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\027\000\020\000\000\000\
\\001\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\031\000\074\000\000\000\
\\001\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\035\000\107\000\000\000\
\\001\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\036\000\073\000\000\000\
\\001\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\036\000\127\000\000\000\
\\001\000\008\000\088\000\000\000\
\\001\000\009\000\075\000\000\000\
\\001\000\009\000\095\000\000\000\
\\001\000\009\000\115\000\000\000\
\\001\000\010\000\019\000\014\000\018\000\028\000\017\000\000\000\
\\001\000\013\000\092\000\000\000\
\\001\000\013\000\122\000\000\000\
\\001\000\020\000\085\000\000\000\
\\001\000\020\000\093\000\000\000\
\\001\000\020\000\133\000\000\000\
\\001\000\028\000\072\000\000\000\
\\001\000\028\000\114\000\000\000\
\\001\000\038\000\068\000\043\000\040\000\044\000\039\000\045\000\038\000\000\000\
\\001\000\039\000\097\000\000\000\
\\001\000\040\000\112\000\000\000\
\\001\000\043\000\040\000\044\000\039\000\045\000\038\000\000\000\
\\137\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\138\000\000\000\
\\139\000\000\000\
\\143\000\000\000\
\\144\000\018\000\029\000\019\000\028\000\000\000\
\\145\000\000\000\
\\146\000\000\000\
\\147\000\018\000\029\000\019\000\028\000\000\000\
\\152\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\000\000\
\\153\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\000\000\
\\154\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\026\000\021\000\027\000\020\000\000\000\
\\155\000\000\000\
\\156\000\000\000\
\\157\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\026\000\021\000\027\000\020\000\000\000\
\\158\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\026\000\021\000\027\000\020\000\000\000\
\\159\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\026\000\021\000\027\000\020\000\
\\032\000\108\000\000\000\
\\160\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\026\000\021\000\027\000\020\000\000\000\
\\162\000\015\000\031\000\016\000\030\000\018\000\029\000\019\000\028\000\
\\020\000\027\000\021\000\026\000\022\000\025\000\023\000\024\000\
\\024\000\023\000\025\000\022\000\026\000\021\000\027\000\020\000\000\000\
\\163\000\000\000\
\\164\000\000\000\
\\165\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\166\000\000\000\
\\167\000\000\000\
\\168\000\000\000\
\\169\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\170\000\000\000\
\\171\000\005\000\096\000\007\000\032\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\027\000\020\000\000\000\
\\172\000\000\000\
\\173\000\000\000\
\\174\000\000\000\
\\175\000\000\000\
\\176\000\000\000\
\\177\000\000\000\
\\178\000\000\000\
\\179\000\000\000\
\\180\000\000\000\
\\181\000\000\000\
\\182\000\000\000\
\\183\000\000\000\
\\184\000\005\000\131\000\000\000\
\\185\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\186\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\187\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\188\000\007\000\032\000\015\000\031\000\016\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\025\000\022\000\026\000\021\000\
\\027\000\020\000\000\000\
\\191\000\000\000\
\\192\000\000\000\
\\193\000\040\000\110\000\000\000\
\\194\000\000\000\
\\195\000\005\000\119\000\007\000\032\000\015\000\031\000\016\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\025\000\022\000\
\\026\000\021\000\027\000\020\000\000\000\
\\196\000\000\000\
\\197\000\001\000\016\000\002\000\015\000\003\000\014\000\004\000\013\000\
\\008\000\012\000\017\000\011\000\030\000\010\000\033\000\009\000\
\\034\000\008\000\037\000\007\000\042\000\006\000\000\000\
\\197\000\002\000\078\000\000\000\
\\197\000\002\000\106\000\000\000\
\"
val actionRowNumbers =
"\009\000\008\000\033\000\045\000\
\\066\000\044\000\010\000\009\000\
\\009\000\009\000\095\000\046\000\
\\047\000\001\000\067\000\009\000\
\\011\000\009\000\009\000\009\000\
\\009\000\009\000\009\000\009\000\
\\009\000\009\000\009\000\009\000\
\\009\000\009\000\009\000\077\000\
\\076\000\075\000\041\000\073\000\
\\012\000\013\000\014\000\039\000\
\\027\000\025\000\050\000\030\000\
\\069\000\068\000\096\000\009\000\
\\095\000\062\000\089\000\023\000\
\\054\000\053\000\006\000\004\000\
\\007\000\005\000\003\000\002\000\
\\051\000\048\000\049\000\052\000\
\\065\000\074\000\095\000\036\000\
\\020\000\029\000\009\000\009\000\
\\009\000\064\000\034\000\092\000\
\\037\000\024\000\031\000\071\000\
\\070\000\090\000\042\000\015\000\
\\009\000\016\000\097\000\026\000\
\\061\000\060\000\056\000\009\000\
\\091\000\057\000\095\000\063\000\
\\078\000\043\000\097\000\079\000\
\\085\000\040\000\032\000\082\000\
\\021\000\009\000\009\000\093\000\
\\009\000\072\000\017\000\035\000\
\\009\000\022\000\018\000\028\000\
\\059\000\096\000\055\000\081\000\
\\080\000\086\000\009\000\019\000\
\\084\000\009\000\094\000\087\000\
\\038\000\097\000\058\000\009\000\
\\083\000\088\000\000\000"
val gotoT =
"\
\\002\000\134\000\003\000\003\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\007\000\035\000\008\000\034\000\009\000\033\000\010\000\032\000\
\\011\000\031\000\000\000\
\\000\000\
\\003\000\040\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\041\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\042\000\015\000\002\000\016\000\001\000\000\000\
\\001\000\045\000\003\000\044\000\005\000\043\000\015\000\002\000\
\\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\049\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\003\000\051\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\052\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\053\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\054\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\055\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\056\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\057\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\058\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\059\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\060\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\061\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\062\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\063\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\064\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\007\000\065\000\009\000\033\000\010\000\032\000\011\000\031\000\000\000\
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
\\001\000\075\000\014\000\074\000\000\000\
\\003\000\077\000\015\000\002\000\016\000\001\000\000\000\
\\001\000\080\000\003\000\079\000\006\000\078\000\015\000\002\000\
\\016\000\001\000\000\000\
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
\\001\000\045\000\003\000\044\000\005\000\082\000\015\000\002\000\
\\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\087\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\088\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\089\000\015\000\002\000\016\000\001\000\000\000\
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
\\012\000\096\000\000\000\
\\003\000\100\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\001\000\103\000\013\000\102\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\107\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\001\000\080\000\003\000\079\000\006\000\109\000\015\000\002\000\
\\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\103\000\013\000\111\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\115\000\015\000\002\000\016\000\001\000\000\000\
\\003\000\116\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\003\000\118\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\121\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\075\000\014\000\126\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\003\000\127\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\003\000\130\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\103\000\013\000\132\000\000\000\
\\000\000\
\\003\000\133\000\015\000\002\000\016\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\"
val numstates = 135
val numrules = 61
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
datatype svalue = VOID | ntVOID of unit ->  unit | STRING of unit ->  (string) | INT of unit ->  (int) | ID of unit ->  (string)
end
type svalue = MlyValue.svalue
type result = unit
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn (T 32) => true | (T 33) => true | (T 34) => true | (T 40) => true | (T 36) => true | (T 37) => true | (T 38) => true | (T 42) => true | (T 43) => true | (T 44) => true | (T 28) => true | (T 29) => true | (T 30) => true | (T 31) => true | (T 35) => true | (T 39) => true | (T 41) => true | _ => false
val preferred_change : (term list * term list) list = 
(nil
,nil
 $$ (T 30))::
(nil
,nil
 $$ (T 31))::
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
  | (T 16) => "UMINUS"
  | (T 17) => "TIMES"
  | (T 18) => "DIVIDE"
  | (T 19) => "EQ"
  | (T 20) => "NEQ"
  | (T 21) => "LT"
  | (T 22) => "LE"
  | (T 23) => "GT"
  | (T 24) => "GE"
  | (T 25) => "AND"
  | (T 26) => "OR"
  | (T 27) => "ASSIGN"
  | (T 28) => "ARRAY"
  | (T 29) => "IF"
  | (T 30) => "THEN"
  | (T 31) => "ELSE"
  | (T 32) => "WHILE"
  | (T 33) => "FOR"
  | (T 34) => "TO"
  | (T 35) => "DO"
  | (T 36) => "LET"
  | (T 37) => "IN"
  | (T 38) => "END"
  | (T 39) => "OF"
  | (T 40) => "BREAK"
  | (T 41) => "NIL"
  | (T 42) => "FUNCTION"
  | (T 43) => "VAR"
  | (T 44) => "TYPE"
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
of  ( 0, ( ( _, ( MlyValue.ntVOID exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  exp1 = exp1 ()
 in ((*#line 52.17 "tiger.grm"*)(*#line 558.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 1, ( result, exp1left, exp1right), rest671)
end
|  ( 1, ( ( _, ( MlyValue.STRING STRING1, STRING1left, STRING1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (STRING as STRING1) = STRING1 ()
 in ((*#line 56.11 "tiger.grm"*)print "exp -> STRING\n"(*#line 564.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, STRING1left, STRING1right), rest671)
end
|  ( 2, ( ( _, ( MlyValue.INT INT1, INT1left, INT1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (INT as INT1) = INT1 ()
 in ((*#line 57.10 "tiger.grm"*)print "exp -> INT\n"(*#line 570.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, INT1left, INT1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (ID as ID1) = ID1 ()
 in ((*#line 58.9 "tiger.grm"*)print "exp -> ID\n"(*#line 576.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, ID1left, ID1right), rest671)
end
|  ( 4, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 59.17 "tiger.grm"*)print "exp -> equal\n"(*#line 582.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 5, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 60.18 "tiger.grm"*)print "exp -> not equal\n"(*#line 589.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 6, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 61.20 "tiger.grm"*)print "exp -> times\n"(*#line 596.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 7, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 62.20 "tiger.grm"*)print "exp -> minus\n"(*#line 603.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: ( _, ( _, UMINUS1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 in ((*#line 63.30 "tiger.grm"*)print "exp -> unary minus\n"(*#line 610.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, UMINUS1left, exp1right), rest671)
end
|  ( 9, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 64.21 "tiger.grm"*)print "exp -> divide\n"(*#line 616.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 10, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 65.19 "tiger.grm"*)print "exp -> plus\n"(*#line 623.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 11, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 66.17 "tiger.grm"*)print "exp -> greater than\n"(*#line 630.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 12, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 67.17 "tiger.grm"*)print "exp -> less than\n"(*#line 637.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 68.17 "tiger.grm"*)print "exp -> greater equal\n"(*#line 644.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 69.17 "tiger.grm"*)print "exp -> less equal\n"(*#line 651.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 70.18 "tiger.grm"*)print "exp -> and \n"(*#line 658.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 71.17 "tiger.grm"*)print "exp -> or \n"(*#line 665.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: _ :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 75.34 "tiger.grm"*)print "exp -> array creation\n"(*#line 672.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, ID1left, exp2right), rest671)
end
|  ( 18, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( MlyValue.ntVOID recordargs1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  recordargs1 = recordargs1 ()
 in ((*#line 76.34 "tiger.grm"*)print "exp -> record creation\n"(*#line 680.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, ID1left, RBRACE1right), rest671)
end
|  ( 19, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.ntVOID explist1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  explist1 = explist1 ()
 in ((*#line 77.31 "tiger.grm"*)print "exp -> function call\n"(*#line 687.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, ID1left, RPAREN1right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.ntVOID exp3, _, exp3right)) :: _ :: ( _, ( MlyValue.ntVOID exp2, _, _)) :: _ :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FOR1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in ((*#line 79.38 "tiger.grm"*)print "exp -> for"(*#line 694.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, FOR1left, exp3right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.ntVOID exp3, _, exp3right)) :: _ :: ( _, ( MlyValue.ntVOID exp2, _, _)) :: _ :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: ( _, ( _, IF1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in ((*#line 80.31 "tiger.grm"*)print "exp -> if then else\n"(*#line 703.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, IF1left, exp3right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: ( _, ( _, IF1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 81.22 "tiger.grm"*)print "exp -> if then\n"(*#line 711.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, IF1left, exp2right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: ( _, ( _, WHILE1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 82.23 "tiger.grm"*)print "exp -> while do\n"(*#line 718.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, WHILE1left, exp2right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.ntVOID lvalue_exp1, lvalue_exp1left, lvalue_exp1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (lvalue_exp as lvalue_exp1) = lvalue_exp1 ()
 in ((*#line 83.17 "tiger.grm"*)print "exp -> lvalue_exp\n"(*#line 725.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, lvalue_exp1left, lvalue_exp1right), rest671)
end
|  ( 25, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ntVOID lvalue1, lvalue1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  lvalue1 = lvalue1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 84.24 "tiger.grm"*)print "exp -> assignment\n"(*#line 731.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, lvalue1left, exp1right), rest671)
end
|  ( 26, ( ( _, ( _, _, END1right)) :: ( _, ( MlyValue.ntVOID optexp1, _, _)) :: _ :: ( _, ( MlyValue.ntVOID decs1, _, _)) :: ( _, ( _, LET1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  decs1 = decs1 ()
 val  optexp1 = optexp1 ()
 in ((*#line 85.29 "tiger.grm"*)print "exp -> let in end\n"(*#line 738.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, LET1left, END1right), rest671)
end
|  ( 27, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.ntVOID optexp1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  optexp1 = optexp1 ()
 in ((*#line 86.27 "tiger.grm"*)print "exp -> grouped exp\n"(*#line 745.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 28, ( ( _, ( MlyValue.ntVOID exp2, _, exp2right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 val  exp2 = exp2 ()
 in ((*#line 87.24 "tiger.grm"*)print "exp -> expseq\n"(*#line 751.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 2, ( result, exp1left, exp2right), rest671)
end
|  ( 29, ( ( _, ( _, NIL1left, NIL1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ((*#line 89.10 "tiger.grm"*)print "exp -> NIL\n"(*#line 758.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 2, ( result, NIL1left, NIL1right), rest671)
end
|  ( 30, ( ( _, ( _, EOF1left, EOF1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ((*#line 90.10 "tiger.grm"*)print "exp -> EOF\n"(*#line 762.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 2, ( result, EOF1left, EOF1right), rest671)
end
|  ( 31, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (empty as empty1) = empty1 ()
 in ((*#line 93.10 "tiger.grm"*)print "optexp -> empty\n"(*#line 766.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 4, ( result, empty1left, empty1right), rest671)
end
|  ( 32, ( ( _, ( MlyValue.ntVOID exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (exp as exp1) = exp1 ()
 in ((*#line 94.10 "tiger.grm"*)print "optexp -> exp\n"(*#line 772.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 4, ( result, exp1left, exp1right), rest671)
end
|  ( 33, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (empty as empty1) = empty1 ()
 in ((*#line 97.10 "tiger.grm"*)print "expist -> empty\n"(*#line 778.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 5, ( result, empty1left, empty1right), rest671)
end
|  ( 34, ( ( _, ( MlyValue.ntVOID exp1, exp1left, exp1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  exp1 = exp1 ()
 in ((*#line 98.10 "tiger.grm"*)print "explist -> single\n"(*#line 784.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 5, ( result, exp1left, exp1right), rest671)
end
|  ( 35, ( ( _, ( MlyValue.ntVOID explist1, _, explist1right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, exp1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  exp1 = exp1 ()
 val  (explist as explist1) = explist1 ()
 in ((*#line 99.24 "tiger.grm"*)print "explist -> multiple\n"(*#line 790.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 5, ( result, exp1left, explist1right), rest671)
end
|  ( 36, ( ( _, ( MlyValue.ntVOID dec1, dec1left, dec1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (dec as dec1) = dec1 ()
 in ((*#line 102.8 "tiger.grm"*)print "decs -> single dec\n"(*#line 797.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 7, ( result, dec1left, dec1right), rest671)
end
|  ( 37, ( ( _, ( MlyValue.ntVOID dec1, _, dec1right)) :: ( _, ( MlyValue.ntVOID decs1, decs1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (decs as decs1) = decs1 ()
 val  dec1 = dec1 ()
 in ((*#line 103.15 "tiger.grm"*)print "decs -> multiple decs\n"(*#line 803.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 7, ( result, decs1left, dec1right), rest671)
end
|  ( 38, ( ( _, ( MlyValue.ntVOID tydec1, tydec1left, tydec1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (tydec as tydec1) = tydec1 ()
 in ((*#line 106.10 "tiger.grm"*)print "dec -> tydec\n"(*#line 810.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 6, ( result, tydec1left, tydec1right), rest671)
end
|  ( 39, ( ( _, ( MlyValue.ntVOID vardec1, vardec1left, vardec1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  vardec1 = vardec1 ()
 in ((*#line 107.13 "tiger.grm"*)print "dec -> tydec\n"(*#line 816.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 6, ( result, vardec1left, vardec1right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.ntVOID fundec1, fundec1left, fundec1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  fundec1 = fundec1 ()
 in ((*#line 108.13 "tiger.grm"*)print "dec -> tydec\n"(*#line 822.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 6, ( result, fundec1left, fundec1right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.ntVOID ty1, _, ty1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, TYPE1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  (ty as ty1) = ty1 ()
 in ((*#line 110.25 "tiger.grm"*)print "tydec -> type id eq ty\n"(*#line 828.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 8, ( result, TYPE1left, ty1right), rest671)
end
|  ( 42, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (ID as ID1) = ID1 ()
 in ((*#line 113.7 "tiger.grm"*)print "ty -> ID\n"(*#line 835.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 11, ( result, ID1left, ID1right), rest671)
end
|  ( 43, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( MlyValue.ntVOID tyfields1, _, _)) :: ( _, ( _, LBRACE1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (tyfields as tyfields1) = tyfields1 ()
 in ((*#line 114.29 "tiger.grm"*)print "ty -> rec tyfields\n"(*#line 841.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 11, ( result, LBRACE1left, RBRACE1right), rest671)
end
|  ( 44, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: _ :: ( _, ( _, ARRAY1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 in ((*#line 115.18 "tiger.grm"*)print "ty -> array of id\n"(*#line 847.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 11, ( result, ARRAY1left, ID1right), rest671)
end
|  ( 45, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (empty as empty1) = empty1 ()
 in ((*#line 118.10 "tiger.grm"*)print "tyfields -> empty\n"(*#line 853.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 12, ( result, empty1left, empty1right), rest671)
end
|  ( 46, ( ( _, ( MlyValue.ntVOID tyfields1, _, tyfields1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (tyfields as tyfields1) = tyfields1 ()
 in ((*#line 119.33 "tiger.grm"*)print "tyfields -> w/ comma\n"(*#line 859.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 12, ( result, ID1left, tyfields1right), rest671)
end
|  ( 47, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 in ((*#line 120.19 "tiger.grm"*)print "tyfields -> single\n"(*#line 867.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 12, ( result, ID1left, ID2right), rest671)
end
|  ( 48, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  exp1 = exp1 ()
 in ((*#line 123.22 "tiger.grm"*)print "vardec -> w/o type\n"(*#line 874.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 9, ( result, VAR1left, exp1right), rest671)
end
|  ( 49, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, VAR1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  exp1 = exp1 ()
 in ((*#line 124.33 "tiger.grm"*)print "vardec -> w/ type\n"(*#line 881.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 9, ( result, VAR1left, exp1right), rest671)
end
|  ( 50, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: _ :: _ :: ( _, ( MlyValue.ntVOID tyfields1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  tyfields1 = tyfields1 ()
 val  exp1 = exp1 ()
 in ((*#line 127.46 "tiger.grm"*)print "fundec -> w/o type\n"(*#line 889.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 10, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 51, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID2, _, _)) :: _ :: _ :: ( _, ( MlyValue.ntVOID tyfields1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, FUNCTION1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  tyfields1 = tyfields1 ()
 val  ID2 = ID2 ()
 val  exp1 = exp1 ()
 in ((*#line 128.57 "tiger.grm"*)print "fundec -> w/type \n"(*#line 897.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 10, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 52, ( ( _, ( MlyValue.ID ID1, ID1left, ID1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (ID as ID1) = ID1 ()
 in ((*#line 131.7 "tiger.grm"*)print "lvalue -> ID\n"(*#line 906.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 14, ( result, ID1left, ID1right), rest671)
end
|  ( 53, ( ( _, ( MlyValue.ntVOID lvalue_exp1, lvalue_exp1left, lvalue_exp1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (lvalue_exp as lvalue_exp1) = lvalue_exp1 ()
 in ((*#line 132.17 "tiger.grm"*)print "lvalue -> lvalue_exp\n"(*#line 912.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 14, ( result, lvalue_exp1left, lvalue_exp1right), rest671)
end
|  ( 54, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: _ :: ( _, ( MlyValue.ntVOID lvalue1, lvalue1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (lvalue as lvalue1) = lvalue1 ()
 val  (ID as ID1) = ID1 ()
 in ((*#line 135.18 "tiger.grm"*)print "lvalue_exp -> lvalue.ID\n"(*#line 918.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 15, ( result, lvalue1left, ID1right), rest671)
end
|  ( 55, ( ( _, ( _, _, RBRACK1right)) :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: _ :: ( _, ( MlyValue.ntVOID lvalue1, lvalue1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (lvalue as lvalue1) = lvalue1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 136.31 "tiger.grm"*)print "lvalue_exp ->lvalue[exp]\n"(*#line 925.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 15, ( result, lvalue1left, RBRACK1right), rest671)
end
|  ( 56, ( ( _, ( _, _, RBRACK1right)) :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ((*#line 137.27 "tiger.grm"*)print "lvalue_exp ->ID[exp]\n"(*#line 932.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 15, ( result, ID1left, RBRACK1right), rest671)
end
|  ( 57, ( ( _, ( MlyValue.ntVOID empty1, empty1left, empty1right)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  (empty as empty1) = empty1 ()
 in ((*#line 140.10 "tiger.grm"*)print "recordargs -> empty\n"(*#line 939.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 13, ( result, empty1left, empty1right), rest671)
end
|  ( 58, ( ( _, ( MlyValue.ntVOID exp1, _, exp1right)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  exp1 = exp1 ()
 in ((*#line 141.16 "tiger.grm"*)print "recordargs-> single\n"(*#line 945.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 13, ( result, ID1left, exp1right), rest671)
end
|  ( 59, ( ( _, ( MlyValue.ntVOID recordargs1, _, recordargs1right)) :: _ :: ( _, ( MlyValue.ntVOID exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.ntVOID (fn _ => ( let val  ID1 = ID1 ()
 val  exp1 = exp1 ()
 val  (recordargs as recordargs1) = recordargs1 ()
 in ((*#line 142.33 "tiger.grm"*)print "recordargs -> multiple\n"(*#line 952.1 "tiger.grm.sml"*)
)
end; ()))
 in ( LrTable.NT 13, ( result, ID1left, recordargs1right), rest671)
end
|  ( 60, ( rest671)) => let val  result = MlyValue.ntVOID (fn _ => ((*#line 144.11 "tiger.grm"*)(*#line 960.1 "tiger.grm.sml"*)
))
 in ( LrTable.NT 0, ( result, defaultPos, defaultPos), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.ntVOID x => x
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
fun UMINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(ParserData.MlyValue.VOID,p1,p2))
fun TIMES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(ParserData.MlyValue.VOID,p1,p2))
fun DIVIDE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(ParserData.MlyValue.VOID,p1,p2))
fun EQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(ParserData.MlyValue.VOID,p1,p2))
fun NEQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(ParserData.MlyValue.VOID,p1,p2))
fun LT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(ParserData.MlyValue.VOID,p1,p2))
fun LE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(ParserData.MlyValue.VOID,p1,p2))
fun GT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(ParserData.MlyValue.VOID,p1,p2))
fun GE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(ParserData.MlyValue.VOID,p1,p2))
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(ParserData.MlyValue.VOID,p1,p2))
fun OR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(ParserData.MlyValue.VOID,p1,p2))
fun ASSIGN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(ParserData.MlyValue.VOID,p1,p2))
fun ARRAY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(ParserData.MlyValue.VOID,p1,p2))
fun WHILE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(ParserData.MlyValue.VOID,p1,p2))
fun FOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(ParserData.MlyValue.VOID,p1,p2))
fun TO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(ParserData.MlyValue.VOID,p1,p2))
fun DO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(ParserData.MlyValue.VOID,p1,p2))
fun OF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(ParserData.MlyValue.VOID,p1,p2))
fun BREAK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(ParserData.MlyValue.VOID,p1,p2))
fun NIL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(ParserData.MlyValue.VOID,p1,p2))
fun FUNCTION (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(ParserData.MlyValue.VOID,p1,p2))
fun VAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(ParserData.MlyValue.VOID,p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(ParserData.MlyValue.VOID,p1,p2))
end
end
