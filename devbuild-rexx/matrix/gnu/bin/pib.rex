/*
Variables are assigned values through either assignment statements or input instructions. The assign-
ment statement uses the equals sign (=) to assign a value to a variable, as shown earlier. The input
instructions are the pull or parse instructions, which read input values, and the arg and parse arg
instructions, which read command line parameters or input arguments to a script.
If a variable has not yet been assigned a value, it is referred to as uninitialized. The value of an uninitial-
ized variable is the name of the variable itself in uppercase letters. This if statement uses this fact to
determine if the variable no_value_yet is uninitialized:
*/

if pib = "value commerce rank" then
   say "variable initialized..."

/*
Character strings or literals are any set of characters enclosed in single or double quotation marks ( ‘ or “ ).
If you need to include either the single or double quote within the literal, simply enclose that literal with
the other string delimiter. Or you can encode two single or double quotation marks back to back, and
Rexx understands that this means that one quote is to be contained within the literal (it knows the dou-
bled quote does not terminate the literal). Here are a few examples
*/

literal= 'Literals contain whatever characters you like: !@#$%^&*()-=+~.<>?/_'
need_a_quote_mark_in_the_string = "Here's my statement."
same_as_the_previous_example = 'Here''s my statement.'
this_is_the_null_string = '' /*two quotes back to back are a “null string” */

/*
In addition to supporting any typical numeric or string representation, Rexx also supports hexadecimal or
base 16 numbers. Hex strings contain the upper- or lowercase letters A through F and the digits 0 through
9, and are followed by an upper- or lowercase X:
*/

twenty_six_in_hexidecimal = '1a'x /* 1A is the number 26 in base sixteen*/
hex_string = '3E 11 4A'X /*Assigns a hex string value to hex_string */

/* 
Rexx also supports binary, or base two strings. Binary strings consist only of 0s and 1s. They are denoted
by their following upper- or lowercase B:
*/

example_binary_string = '10001011'b
another_binary_string = '1011'B

