open Test_lib
open Report

(*TYPE DEFINITIONS*)
type 'a tree = Node of 'a * ('a tree) list

(*EXPRESSION DEFINITIONS*)
let l5 = [0; 1; 2; 3; 4; 5]
let l10 = [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10]
let t10 = Node (1, [ Node (2, [])
                 ; Node (3, [ Node (4, [])
                            ; Node (5, [])
                            ; Node (6, [ Node (7, [])
                                       ; Node (8, [])
                                       ; Node (9, [])
                                       ; Node (10, [])
                                       ])
                            ])
                  ])

(*TESTING FUNCTIONS*)
let test_identity () = 
  begin
    test_function_1_against_solution
      [%ty: int -> int]
      "identity"
      ~gen:0
      [0]
    @
    test_function_1_against_solution
      [%ty: float -> float]
      "identity"
      ~gen:0
      [0.0]
    @
    test_function_1_against_solution
      [%ty: char -> char]
      "identity"
      ~gen:0
      ['a']
    @
    test_function_1_against_solution
      [%ty: string -> string]
      "identity"
      ~gen:0
      ["hello world"]
    @
    test_function_1_against_solution
      [%ty: int list -> int list]
      "identity"
      ~gen:0
      [[1; 2; 3; 4; 5]]
  end

let test_findNthElement () = 
  begin
    test_function_1_against_solution
      [%ty: (int list * int) -> int option]
      "findNthElement"
      ~gen:10
      []
  end

let test_enumerateKCombinations () = 
  begin
    test_function_1_against_solution
      [%ty: (int list * int) -> int list list]
      "enumerateKCombinations"
      ~gen:0
      [(l5,0);(l5,1);(l5,2);(l5,3);(l5,4);
       (l5,5);(l5,6);(l10,-1);(l10,5);(l10,12)]
  end

let test_countNodes () = 
  begin
    []
  end

let test_findNode () = 
  begin
    []
  end

let test_fib () = 
  begin
    test_function_1_against_solution
      [%ty: int -> int list]
      "fib"
      ~gen:0
      [0;2;8;32;64;256]
  end

let test_pascal () = 
  begin
    test_function_1_against_solution
      [%ty: int -> int list list]
      "pascal"
      ~gen:0
      [0;2;4;6]
  end


(*AGGREGATED CALL FOR ALL TEST FUNCTIONS*)
let () = 
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    Section
      ([ Text "Function" ; Code "identity" ],
        test_identity());
    Section
      ([ Text "Function" ; Code "findNthElement" ],
        test_findNthElement());
    Section
      ([ Text "Function" ; Code "enumerateKCombinations" ],
      test_enumerateKCombinations());
    Section
      ([ Text "Function" ; Code "fib" ],
      test_fib());
    Section
      ([ Text "Function" ; Code "pascal" ],
      test_pascal())
  ]