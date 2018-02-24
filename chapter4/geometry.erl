-module(geometry).

-export([area/1,test/0,perimeter/1]).

test() ->
    12 = area({rectangule,3,4}),
    144 = area({square,12}),
    10.0 = area({right_triangle,4,5}),
    153.93804002589985 = area({circle,7}),
    16 = perimeter({rectangule,4,4}),
    43.982297150257104 = perimeter({circle,7}),
    7.16227766016838 = perimeter({right_triangle,1,3}),
    16 = perimeter({square,4}),
    tests_worked.

area({rectangule,Width,Height}) -> Width * Height;
area({circle,Radio}) -> math:pi() * Radio * Radio;
area({right_triangle,Base,Height}) -> (Base * Height)/2;
area({square,Side}) -> Side * Side.

perimeter({rectangule,Width,Height}) -> 2 *(Width + Height);
perimeter({circle,Radio}) -> 2 * math:pi() * Radio;
perimeter({right_triangle,Base,Height}) -> Base +Height + math:sqrt(math:pow(Base,2)+ math:pow(Height,2));
perimeter({square,Side}) -> 4*Side.