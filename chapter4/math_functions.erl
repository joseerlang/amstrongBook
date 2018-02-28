-module(math_functions).

-export([even/1,odd/1,filter/2,split/1,split2/1,split3/1,test/0]).

even(X) when is_integer(X) ->
     (X rem 2) =:= 0.

odd(X) when is_integer(X)->
     (X rem 2) =:= 1.

filter(F,L)->
    [X || X <- L , F(X) ].

split(L) ->
    Evens = [X || X <- L , (X rem 2) =:= 0],
    Odds = [X || X <- L , (X rem 2) =:= 1],
    {Evens,Odds}.

split2(L) ->
    Evens = filter(fun(X)-> even(X) end,L),
    Odds = filter(fun(X)-> odd(X) end,L),
    {Evens,Odds}.

split3(L) ->
    accumulator(L,[],[]).

accumulator([H|T],Evens,Odds) ->
    case (H rem 2) of 
        1 -> accumulator(T,Evens,[H|Odds]);
        0 -> accumulator(T,[H|Evens],Odds)
    end;
accumulator([],Evens,Odds)->
    {Evens,Odds}.    

test() ->
    true = even(4),
    false = even(3),
    true = odd(3),
    false = odd(4),
    {[2,4],[1,3]} = split([1,2,3,4]),
    {[2,4],[1,3]} = split2([1,2,3,4]), 
    {[4,2],[3,1]} = split3([1,2,3,4]), 
    test_worked.

    