fun sum_list(xs : int list)=
    if null xs
    then 0
    else (hd xs) + sum_list(tl xs)

fun list_product(xs : int list)=
    if null xs
    then 1
    else (hd xs) * list_product(tl xs)

fun countdown(x : int)=
    if x = 0
    then []
    else x :: countdown(x -1)

fun append(xs : int list, ys : int list)=
    if null xs
    then ys
    else (hd xs) :: append((tl xs),ys)

(* sum_pair_list [(1,2), (3,4), (5,6)] *)
fun sum_pair_list(xs : (int * int) list)=
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)

(* firsts [(1,2), (3,4), (5,6)] => [1,3,5] *) 
fun firsts(xs : (int * int) list)=
    if null xs
    then []
    else #1 (hd xs) :: firsts(tl xs)

(* seconds [(1,2), (3,4), (5,6)] => [2,4,6] *) 
fun seconds(xs : (int * int) list)=
    if null xs
    then []
    else #2 (hd xs) :: seconds(tl xs)

(* sum_pair_list2 [(1,2), (3,4), (5,6)] *)
fun sum_pair_list2(xs : (int * int) list)=
    sum_list(firsts(xs)) + sum_list(seconds(xs))

(* factorial 5 => 120 *)
fun factorial(n : int)=
    if n = 0
    then 1
    else n * factorial(n - 1)

(* factorial2 5 => 120 *)
fun factorial2(n : int)=
    list_product(countdown(n))
    