(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

type t =
  {
    x : int ;
    y : int ;
  }

let create x y =
  {
    x ;
    y ;
  }

let add lhs rhs =
  {
    x = lhs.x + rhs.x ;
    y = lhs.y + rhs.y ;
  }

let sub lhs rhs =
  {
    x = lhs.x - rhs.x ;
    y = lhs.y - rhs.y ;
  }

    
