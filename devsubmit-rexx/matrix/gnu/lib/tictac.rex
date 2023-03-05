/*
In addition to the to and by keywords, for may be used establish another limit on the loop’s execution
if some other condition does not terminate it first. for is like to, in that Rexx checks it prior to each inter-
action through the loop. to, by, and for may be coded in any order. In this example, the for keyword
limits the do loop to three executions:
*/

do
   j = 1 to 100 by 1 for 3
say 'Loop executed:'
say j
end
/* Ends with: ‘Loop executed: 3 times.’ */
