%%
a*b printf("1");
(a|b)*b printf("2");
c* printf("3");
%%
/*
aaabccabbb ->
aaab -> 1
cc -> 3
abbb -> 2

cbbbac -> 
c -> 3
bbbb -> 2
a -> a 
c -> 3

cbac 
*/
