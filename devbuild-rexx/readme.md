# welcome dev build rexx 
software dev build rex active microsoft Rexx language

```rexx
/*
.
├── license
├── matrix
│   └── gnu
│       ├── bin
│       │   ├── cni.rex
│       │   ├── gw.rex
│       │   └── pib.rex
│       ├── lib
│       │   └── abin.zcfg
│       └── test
│           └── drop.zrx
└── readme.md
*/
```

This example shows how to change the precision in a calculation. Set the numeric precision to 12 digits

```rexx
numeric digits 12 /* set numeric precision to 12 digits displays: 0.666666666667 */
say 2 / 312 /* For my gw library */
```

by the numeric instruction, and you get this result:
Rexx preserves trailing zeroes coming out of arithmetic operations:
Chapter 7 explores computation further. It tells you everything you need to know about how to express
numbers in Rexx, conversion between numeric and other formats, and how to obtain and display
numeric results. We’ll defer further discussion on numbers and calculations to Chapter 7.
Comparison operators provide for numeric and string comparisons. These are the operators you use to
determine the equality or inequality of data elements. Use them to determine if one data item is greater
than another or if two variables contain equal values.
Since every Rexx variable contains a character string, you might wonder how Rexx decides to perform a
character or numeric comparison. The key rule is: if both terms involved in a comparison are numeric, then
the comparison is numeric. For a numeric comparison, any leading zeroes are ignored and the numeric val-
ues are compared. This is just as one would expect.
If either term in a comparison is other than numeric, then a string comparison occurs. The rule for string
comparison is that leading and trailing blanks are ignored, and if one string is shorter than the other, it is
padded with trailing blanks. Then a character-by-character comparison occurs. String comparison is
case-sensitive. The character string ABC is not equal to the string Abc. Again, this is what one would nor-
mally assume.
