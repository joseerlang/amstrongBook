-module(countcharacters).

-export([count_characters/1]).

count_characters(Str) ->
    count_characters(Str,#{}).

count_characters([H|T],Map) ->
    N = maps:get(H,Map,0),
    count_characters(T,maps:put(H,N+1,Map));
count_characters([],Map) -> Map.
