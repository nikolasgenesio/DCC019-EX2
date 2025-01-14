#lang dcc019/proc

let makerec = proc (f)
                   let d = proc (x)
                     proc (z) ((f (x x)) z)
               in proc (n) ((f (d d)) n)
   in let makesum = proc (f)
                         proc (x)
               if zero?(x) then 0 else + (x, (f -(x, 1)))
      in let sum = (makerec makesum)
         in (sum 100)
