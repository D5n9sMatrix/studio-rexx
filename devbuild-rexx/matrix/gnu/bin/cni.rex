/*
Operators
Every programming language has operators, symbols that indicate arithmetic operations or dictate that
comparisons must be performed. Operators are used in calculations and in assigning values to variables,
for example. Rexx supports a full set of operators for the following.
❑Arithmetic
❑Comparison
❑Logical operators
❑Character string concatenation
The arithmetic operators are listed in the following table:
Arithmetic Operator
Use
+Addition
-Subtraction
*Multiplication
/Division
%Integer division — returns the integer part of the result from division
//Remainder division — returns the remainder from division
**Raise to a whole number power
+ (as a prefix )Indicates a positive number
(as a prefix)Indicates a negative number
-
All arithmetic operators work as one would assume from basic high-school algebra, or from program-
ming in most other common programming languages. Here are a few examples using the less obvious
operators:
*/

cni_work = (5 % 2)        /* Returns the integer part of division result. Displays: 2 */
cni_objs = (5 // 2)       /* Returns the remainder from division. Displays: 1 */
cni_chs  = (5 ** 2)       /* Raises the number to the whole power. Displays: 25 */
  

/*
Remember that because all Rexx variables are strings, arithmetic operators should only be applied to
variables that evaluate to valid numbers. Apply them only to strings containing digits, with their
optional decimal points and leading signs, or to numbers in exponential forms.
Numeric operations are a major topic in Rexx (as in any programming language). The underlying princi-
ple is this — the Rexx standard ensures that the same calculation will yield the same results even when run under
different Rexx implementations or on different computers. Rexx provides an exceptional level of machine- and
implementation-independence compared with many other programming languages.
*/
