(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

type t =
  {
    w : int ;
    h : int ;
  }

let create w h =
  {
    w ;
    h ;
  }
    
let add lhs rhs =
  {
    w = lhs.w + rhs.w ;
    h = lhs.w + rhs.h ;
  }

let sub lhs rhs =
  {
    w = lhs.w - rhs.w ;
    h = lhs.h - rhs.h ;
  }

