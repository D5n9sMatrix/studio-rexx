/*
The phrase by 1 is unnecessary because Rexx automatically increases the do loop control variable by 1 if
this phrase is not coded. But the keyword by could be useful in situations where you want to increase
the loop counter by some other value:
*/
do
   j = 1 to 20 by 2
call digits
end
