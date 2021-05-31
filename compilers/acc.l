%{
    #include <stdio.h>
    #include "y.tab.h"
%}
%%
(ab)* {  return FIRST; }
c+ {  return C; }
d+ {  return D; }
"\n" {  return NL; }  
%%