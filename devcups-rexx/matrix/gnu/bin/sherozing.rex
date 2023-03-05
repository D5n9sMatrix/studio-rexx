var = '1 or 0'
/* A simple IF statement with no ELSE clause */
if input = 'YES' then
say 'You are very agreeable'
/* In this example the IF statement tests a two-part or “compound” condition. The
SAY instruction executes only if BOTH conditions are TRUE, because of the
AND (&) operator */
if input = 'YES' & second_input = 'YES' then
say 'You are doubly agreeable today'
/* This compound IF is true if EITHER of the two expressions are TRUE */
if input = 'YES' | second_input = 'YES' then
say 'You are singly agreeable today'
/* Here’s a simple IF statement with an ELSE clause.
The DATATYPE function verifies whether the variable INPUT contains a NUMBER */
if datatype(input,N) then
say 'Your input was a number'
else
say 'Your input was not numeric'
/* This coding is NOT recommended in Rexx, though it is popular in languages
like C or C++ or many Unix shell languages...
Variable VAR must be exactly 1 or 0 -- or else a syntax error will occur! */
if (var = '1 or 0') then
say 'VAR evaluated to 1'
else
say 'VAR evaluated to 0'
if datatype(input,N) then do
say 'The input was a number'
status_record = 'VALID'
end
else do
say 'The input was NOT a number'
status_record = 'INVALID'
end
