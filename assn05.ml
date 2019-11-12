(*definition of cycle()*)
  fun cycle (L, n) = if n = 0 then L					(*Conitnue until n is 0*)
    else if null L then L											(*If empty list, return empty*)
    else cycle(tl L @ [hd L], n-1);						(*Put the tail of the list at the end, and call the function with n-1*)
  
(* testing cycle() *)
	cycle([4,5,6], 0);
	cycle([], 3);
	cycle ([1,2,3,4], 3);
	cycle ([1,2,3,4], 1);
	cycle ([1,2,3,4], 5);
	cycle ([1,2,3,4], 0);


	
(* definition of dup() *)
	fun dup nil = nil													(*If nil, return nil*)
  | dup (x::xs) = x :: x :: dup xs;					(*Otherwise Assigned head to X, add it twice, and call the funciton again with the tail of the list, stored in xs*)
  
  (* testing dup() *)
  dup [];
	dup [1, 10];
  dup [1,2,3,4];
 
(* definition of removei() *)

	fun removei (i, L) =
    case L of																				(*If list is null, return empty list*)
    []=>[]
    | xs::ys => if i = xs then removei(i,ys)				(*Otherise if xs(head of list) is i, then call function of that item*)
          else xs::removei(i,ys);										(*Otherise add it to the front of the last*)
          
(* testing removei() *)
  removei(3, []);
	removei(2, [1,2,3]);
	removei(4, [1,2,3,4,5]);
	removei(10, [1,2,3,4,5]);


(* definition of dot() *)

	fun dot (L, M) = 
		if null L then 0.0													(*If list null then return 0*)
		else (hd L*hd M) + dot(tl L,tl M);					(*Multiply heads of lists together, then call function with tails of list*)
	
(* testing dot() *)
	dot([], []);
	dot([1.0, 4.0],[2.0, 4.0]);
	dot([1.0, 2.0, 3.0],[4.0, 5.0, 6.0]);

(*definition of istri() *)
	fun istri(num1:real, num2:real, num3:real) = 
		if num1 + num2 > num3 andalso (num1 < num3) andalso (num2 < num3) then		(*Each if tests for the largest number*)
			true																																								(*and if the sum of the smaller ones are greater than the large one, then true*)
		else if num1 + num3 > num2 andalso (num1 < num2) andalso (num3 < num2) then
			true
		else if num2 + num3 > num1 andalso (num2 < num1) andalso (num3 < num1) then
			true
		else
			false;
			
			
			
(* testing istri() *)
	 istri(1.0,1.0, 4.0);
	 istri(4.0, 9.0, 7.0);
	 istri(5.0, 10.0, 5.0);
   istri(10.0, 5.0, 5.01);
