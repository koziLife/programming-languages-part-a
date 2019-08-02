(* 3, 6 => [3,4,5] *)
fun count_x (from : int, to : int)=
    if from = to
    then []
    else from :: count(from + 1, to)

(* 6 => [3,4,5] *)
fun countup_from1(x : int) =
    let
      fun count (from : int)=
        if from = x
        then []
        else from :: count(from + 1)
    in
      count(1)
    end