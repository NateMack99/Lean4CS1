

#check Empty
#check False
#check Type 1
#check True

#check Nat
#check True.intro

def b2s (b : Bool) : String :=
  match b with
  |  Bool.true => "It's true"
  |  Bool.false => "Nope"



def tally (n : Nat) : String :=
  match n with
  | Nat.zero => ""
  | Nat.succ n' => "!" ++ tally n'

#eval tally 5
