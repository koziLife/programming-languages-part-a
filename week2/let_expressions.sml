fun silly1(z : int) =
    let
      val x = if z > 0 then z else 66
      val y = x + z
    in
      if x > y then x * 2 else y+99
    end

fun silly2 () =
    let
        val x = 1
    in 
        (let val x = 9 in x + 1 end) + (let val y = 8 in x + y end)
    end 

    
