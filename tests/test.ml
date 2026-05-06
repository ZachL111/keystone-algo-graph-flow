#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 55; capacity = 80; latency = 19; risk = 22; weight = 12 };;
expect (score signal_case_1 = 71);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 97; capacity = 105; latency = 9; risk = 5; weight = 8 };;
expect (score signal_case_2 = 279);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 70; capacity = 77; latency = 24; risk = 16; weight = 9 };;
expect (score signal_case_3 = 101);;
expect (classify signal_case_3 = "review");;

#use "review.ml";;
let domain_review = { signal = 51; slack = 46; drag = 23; confidence = 55 };;
expect (review_score domain_review = 134);;
expect (review_lane domain_review = "watch");;
