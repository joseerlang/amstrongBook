-module(houses).
-export([start/0]).

start() ->
    HouseA= {house,{size,200},{rooms,3},{bathrooms,2},{floor,2},{lift,false}}, 
    HouseB= {house,{size,200},{rooms,2},{bathrooms,1},{floor,3},{lift,true}},
    HouseC= {house,{size,200},{rooms,1},{bathrooms,1},{floor,4},{lift,true}},
    HouseD= {house,{size,200},{rooms,4},{bathrooms,3},{floor,1},{lift,false}},
    Street =[HouseA,HouseB,HouseC,HouseD],

