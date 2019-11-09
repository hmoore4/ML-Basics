(*definition of cycle()*)
  fun cycle (L, n) = if n = 0 then L
  else cycle(tl L @ [hd L], n-1);
  (*If list is nil, return nil*)
  
(* testing cycle() *)
	cycle ([1,2,3,4], 3);
	cycle ([1,2,3,4], 1);
	cycle ([1,2,3,4], 5);
	cycle ([1,2,3,4], 0);


	
(* definition of dup() *)
	fun dup nil = nil
  | dup (x::xs) = x :: x :: dup xs;
  
  (* testing dup() *)
  dup [1,2,3,4];
 
(* definition of removei() *)

fun removei (item, list) =
    case list of
    []=>[]
    | xs::ys => if item = xs then removei(item,ys)
          else xs::removei(item,ys);
          
  (* testing removei() *)
removei(2, [1,2,3]);
removei(4, [1,2,3,4,5]);


(* definition of dot() *)
	fun dot ([],[]) = 0
	| dot(x::l,y::k) = (x*y)::sumlists(L,M); 
	
	dot([1.0, 4.0],[2.0, 4.0]);
