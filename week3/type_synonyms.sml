datatype suit = Club | Diamond | Heart | Spade

datatype rank = Ace | Jack | King | Queen | Num of int

type card = suit * rank

(* another type example *)

type name_record = { student_num    : int option,
                     first          : string,
                     middle         : string option,
                     last           : string
}

fun is_Queen_of_Spade (c: card)=
    #1 c = Spade andalso #2 c = Queen

fun is_Queen_of_Spade2 c =
    case c of
        (Spade, Queen) => true
        | _=> false

val c1 : card           = (Club, Ace)
val c2 : suit * rank    = (Diamond, Jack)
val c3                  = (Spade, Queen)