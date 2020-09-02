(* use the CIS 120 testing library *)
open Assert;;

(* Step 1: What we understood from the problem description
     profit = revenue – cost
     revenue = price * attendees
     cost = $180 + attendees * $0.04
     attendees = some function of the ticket price   *)

(* Step 2: The interface *)
(* Money is represented in cents. *)

let attendees (price : int) : int =
  (-15 * price)/10 + 870

let revenue (price : int) : int =
   price * attendees price

let cost (price : int) : int =
   18000 + attendees price * 4

let profit (price : int) : int =
  revenue price - cost price

(* Step 3: A simple test case, from the problem description *)
let profit_500 : int =
  let price     = 500 in
  let attendees = 120 in
  let revenue   = price * attendees in
  let cost      = 18000 + attendees * 4 in
  revenue - cost

(* A way to run the test case. *)
let test () : bool =
  (profit 500) = profit_500

;; run_test "profit at $5.00" test



(* ----------------------- *)
(* unit test: *)
(* generated during the development of attendees *)

let test () : bool =
   attendees 500 = 120
;; run_test "Attendees at $5.00" test

let test () : bool =
   attendees 490 = 135
;; run_test "Attendees at $4.90" test