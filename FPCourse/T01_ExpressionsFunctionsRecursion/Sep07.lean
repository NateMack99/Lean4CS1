

#check Empty
#check False
#check Type 1
#check True

#check Nat
#check True.intro

inductive MyUnit where
  | unit: MyUnit

inductive MyNat where
  | zero : MyNat
  | mySucc (n : MyNat) : MyNat

def b2s (b : Bool) : String :=
  match b with
  |  Bool.true => "It's true"
  |  Bool.false => "Nope"

def tally (n : Nat) : String :=
  match n with
  | Nat.zero => ""
  | Nat.succ n' => "!" ++ tally n'

#eval tally 5
#check Nat × String
#check Prod Nat String
#check Nat.add
#check Nat.add 3
def id' {α : Sort u} (n : α) : α :=
  n 
#eval id' 4


def add_three (a b: Nat)(c: Bool) : Nat :=
  match c with
  | Bool.true => a + b
  | Bool.false => a - b

#check add_three
