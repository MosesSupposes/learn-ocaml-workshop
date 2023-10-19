open! Base

(* Here are a few example functions. *)
let square x = x * x

let add x y = x + y

let half x = x / 2

let square x = x * x

(* You can order function invocations with either parentheses or let bindings. *)
(* Parentheses: *)
let () =
  Stdio.printf "(5^2)/2 = %i\n" (half (square 5))

(* Let bindings: *)
let () =
  let squared = square 5 in
  let halved = half squared in
  Stdio.printf "(5^2)/2 = %i\n" halved

(* Try to write [average] by reusing [add] and [half], first ordering your
   function invocations using parentheses, then using let bindings. *)
let average x y =
  let sum = x + y in
  let sumHalved = half sum in
  sumHalved


let%test "Testing average..."  =
  Int.(=) 5 (average 5 5)

let%test "Testing average..." =
  Int.(=) 75 (average 50 100)
