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
removei(10, [1,2,3,4,5]);


(* definition of dot() *)

	fun dot (L, M) = 
		if null L then 0.0
	else (hd L*hd M) + dot(tl L,tl M);
	
	  (* testing dot() *)
	dot([1.0, 4.0],[2.0, 4.0]);
	dot([1.0, 2.0, 3.0],[4.0, 5.0, 6.0]);

(*definition of istri() *)
	fun istri(num1, num2, num3) = 
		if num1 andalso num2 < num3 then
			if num1 + num2 > num3 then true else false;
		else
			if num2 and also num3 < num1 then
				if num2+num2 < num1 then true
			
			
			
