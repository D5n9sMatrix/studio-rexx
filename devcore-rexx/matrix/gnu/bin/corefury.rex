/*
The if-else-if ladder embodies another structured construct often referred to the CASE construct. In a
CASE construct, a set of conditions are tested, then one logic branch is selected from among several.
Rexx provides the select instruction to create CASE logic, as will be explained later. In Rexx you can
either choose an if-else-if ladder or the select instruction to encode CASE logic.
Sometimes, you’ll encounter a coding situation where you want to code a logic branch that performs no
action. In this case, code the Rexx nop instruction. “nop” is a traditional computer science abbreviation
or term that means “no operation.” The nop instruction is a placeholder that results in no action. Here
is an example. The nop instruction in this code ensures that no action is taken when the if statement
condition evaluates to TRUE:
*/

if case_is_undetermined = 'Y' then
nop
/* No action is taken here. NOP is a placeholder only. */
else do
say 'Case action completed'
status_msg = 'Case action completed'
end
