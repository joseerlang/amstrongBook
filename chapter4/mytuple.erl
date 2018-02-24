-module(mytuple).

-export([my_tuple_to_list/1,test/0]).

my_tuple_to_list({}) ->[];
my_tuple_to_list(Tuple) -> E1 = element(1,Tuple), [E1|my_tuple_to_list(erlang:delete_element(1,Tuple))].

test() ->
    [] = my_tuple_to_list({}),
    [test,[1,2,3]] = my_tuple_to_list({test,[1,2,3]}),
    [casi,{a,1}] = my_tuple_to_list({casi,{a,1}}),
    test_worked.