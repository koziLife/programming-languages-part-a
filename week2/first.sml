(* Variable bindings *)
val x = 34

val y = 12

val z = (x + y) + 3

val abs_of_z = if z < 0 then 0 - z else z

val abs_of_z_simpler = abs z