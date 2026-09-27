



def neg {a : Prop} : Prop := a → False
inductive MyFalse : Prop
#check MyFalse
#check neg

example : neg MyFalse :=
  fun m => nomatch m
