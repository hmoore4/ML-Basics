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
fun delete (item, list) =
    case list of
    []=>[]
      | xs::ys => if item = xs then delete(item,ys)
          else xs::delete(item,ys);
          
  removei(2, [1,2,3]);
removei([1,2,3,4,5],4);

fun delete (item, list) =
    case list of
    []=>[]
      | xs::ys => if item = xs then delete(item,ys)
          else xs::delete(item,ys)
