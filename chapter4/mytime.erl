-module(mytime).

-export([my_time_func/1,my_date_string/0]).

my_time_func(F) ->
    Initial = erlang:system_time(nanosecond),
    F,
    End= erlang:system_time(nanosecond),
    End-Initial.

my_date_string()->
    {Year,Month,Day} = erlang:date(),
    {Hour,Minute,Second} = erlang:time(),
    io:format(" ~w/~w/~w ~w:~w:~w ~n",[Day,Month,Year,Hour,Minute,Second]).
