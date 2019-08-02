fun countup(from : int, to : int) =
    if from = to
    then to :: []
    else from :: countup(from + 1, to) 
   
fun countdown(from : int, to : int) =
    if from = to
    then to :: []
    else from :: countdown(from -1 , to)


(* bad_max(countdown(300, 1)); *)
(* bad_max(countup(1, 30)); *)
fun bad_max(xs : int list) =
    if null xs
    then 0
    else if null (tl xs)
    then hd xs
    else if hd xs > bad_max(tl xs)
    then hd xs
    else bad_max(tl xs)

(* good_max(countdown(300, 1)); *)
(* good_max(countup(1, 3000)); *)
fun good_max(xs : int list) =
    if null xs
    then 0
    else if null (tl xs)
    then hd xs
    else
        let
          val max_num = good_max(tl xs)
        in
          if hd xs > max_num
          then hd xs
          else max_num
        end


