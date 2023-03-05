# welcome studio rexx thought active
software editor thought active microsoft rexx lang

Rexx

    Article
    Talk

    Read
    Edit
    View history

From Wikipedia, the free encyclopedia
	
This article is written like a manual or guidebook. Please help rewrite this article from a descriptive, neutral point of view, and remove advice or instruction. (September 2022) (Learn how and when to remove this template message)
	
This article contains a list of miscellaneous information. Please relocate any relevant information into other sections or articles. (September 2022)
RexxRexx-img-lg.png
Paradigm	multiparadigm: procedural, structured
Designed by	Mike Cowlishaw
Developer	Mike Cowlishaw, IBM
First appeared	1979; 44 years ago
Stable release	
ANSI X3.274 / 1996; 27 years ago
Typing discipline	Dynamic
Filename extensions	.cmd, .bat, .exec, .rexx, .rex, EXEC
Major implementations
VM/SP R3, TSO/E V2, SAAREXX, ARexx, BREXX, Regina,[1] Personal REXX, REXX/imc
Dialects
NetRexx, Object REXX, now ooREXX, KEXX
Influenced by
PL/I, ALGOL, EXEC, EXEC 2
Influenced
NetRexx, Object REXX

    Rexx Programming at Wikibooks

Rexx (Restructured Extended Executor) is a programming language that can be interpreted or compiled. It was developed at IBM by Mike Cowlishaw.[2][3] It is a structured, high-level programming language designed for ease of learning and reading. Proprietary and open source Rexx interpreters exist for a wide range of computing platforms; compilers exist for IBM mainframe computers.[4]

Rexx is a full language that can be used as a scripting, macro language, and application development language. It is often used for processing data and text and generating reports; these similarities with Perl mean that Rexx works well in Common Gateway Interface (CGI) programming and it is indeed used for this purpose. Rexx is the primary scripting language in some operating systems, e.g. OS/2, MVS, VM, AmigaOS, and is also used as an internal macro language in some other software, such as SPF/PC, KEDIT, THE and the ZOC terminal emulator. Additionally, the Rexx language can be used for scripting and macros in any program that uses Windows Scripting Host ActiveX scripting engines languages (e.g. VBScript and JScript) if one of the Rexx engines is installed.

Rexx is supplied with VM/SP Release 3 on up, TSO/E Version 2 on up, OS/2 (1.3 and later, where it is officially named Procedures Language/2), AmigaOS Version 2 on up, PC DOS (7.0 or 2000), ArcaOS,[5] and Windows NT 4.0 (Resource Kit: Regina). REXX scripts for CMS share the filetype EXEC with EXEC and EXEC2, and the first line of the script specifies the interpreter to be used. REXX scripts for MVS may[a] be recognized by the low level qualifier EXEC or may[b] be recognized by context and the first line. REXX scripts for OS/2 share the filename extension .cmd with other scripting languages, and the first line of the script specifies the interpreter to be used. REXX macros for REXX-aware applications use extensions determined by the application. In the late 1980s, Rexx became the common scripting language for IBM Systems Application Architecture, where it was renamed "SAA Procedure Language REXX".

A Rexx script or command is sometimes referred to as an EXEC in a nod to the CMS file type used for EXEC,[6] EXEC 2[7] and REXX scripts on CP/CMS and VM/370 through z/VM.
Features

Rexx has the following characteristics and features:

    Simple syntax
    The ability to route commands to multiple environments
    The ability to support functions, procedures and commands associated with a specific invoking environment.
    A built-in stack, with the ability to interoperate with the host stack if there is one.
    Small instruction set containing just two dozen instructions
    Freeform syntax
    Case-insensitive tokens, including variable names
    Character string basis
    Dynamic data typing, no declarations
    No reserved keywords, except in local context
    No include file facilities
    Arbitrary numerical precision
    Decimal arithmetic, floating-point
    A rich selection of built-in functions, especially string and word processing
    Automatic storage management
    Crash protection
    Content addressable data structures
    Associative arrays
    Straightforward access to system commands and facilities
    Simple error-handling, and built-in tracing and debugger
    Few artificial limitations
    Simplified I/O facilities
    Unconventional operators
    Only partly supports Unix style command line parameters, except specific implementations
    Provides no basic terminal control as part of the language, except specific implementations
    Provides no generic way to include functions and subroutines from external libraries, except specific implementations

Rexx has just twenty-three, largely self-evident, instructions (such as call, parse, and select) with minimal punctuation and formatting requirements. It is essentially an almost free-form language with only one data-type, the character string; this philosophy means that all data are visible (symbolic) and debugging and tracing are simplified.

Rexx's syntax looks similar to PL/I, but has fewer notations; this makes it harder to parse (by program) but easier to use, except for cases where PL/I habits may lead to surprises. One of the REXX design goals was the principle of least astonishment.[8]
History
pre–1990

Rexx was designed and first implemented, in assembly language, as an 'own-time' project between 20 March 1979 and mid-1982 by Mike Cowlishaw of IBM, originally as a scripting programming language to replace the languages EXEC and EXEC 2.[2] It was designed to be a macro or scripting language for any system. As such, Rexx is considered a precursor to Tcl and Python. Rexx was also intended by its creator to be a simplified and easier to learn version of the PL/I programming language. However, some differences from PL/I may trip up the unwary.

It was first described in public at the SHARE 56 conference in Houston, Texas, in 1981,[9] where customer reaction, championed by Ted Johnston of SLAC, led to it being shipped as an IBM product in 1982.

Over the years IBM included Rexx in almost all of its operating systems (VM/CMS, MVS TSO/E, IBM i, VSE/ESA, AIX, PC DOS, and OS/2), and has made versions available for Novell NetWare, Windows, Java, and Linux.

The first non-IBM version was written for PC DOS by Charles Daney in 1984/5[3] and marketed by the Mansfield Software Group (founded by Kevin J. Kearney in 1986).[2] The first compiler version appeared in 1987, written for CMS by Lundin and Woodruff.[10] Other versions have also been developed for Atari, AmigaOS, Unix (many variants), Solaris, DEC, Windows, Windows CE, Pocket PC, DOS, Palm OS, QNX, OS/2, Linux, BeOS, EPOC32/Symbian, AtheOS, OpenVMS,[11]: p.305  Apple Macintosh, and Mac OS X.[12]

The Amiga version of Rexx, called ARexx, was included with AmigaOS 2 onwards and was popular for scripting as well as application control. Many Amiga applications have an "ARexx port" built into them which allows control of the application from Rexx. One single Rexx script could even switch between different Rexx ports in order to control several running applications.
1990 to present

In 1990, Cathie Dager of SLAC organized the first independent Rexx symposium, which led to the forming of the REXX Language Association. Symposia are held annually.

Several freeware versions of Rexx are available. In 1992, the two most widely used open-source ports appeared: Ian Collier's REXX/imc for Unix and Anders Christensen's Regina[1] (later adopted by Mark Hessling) for Windows and Unix. BREXX is well known for WinCE and Pocket PC platforms, and has been "back-ported" to VM/370 and MVS.

OS/2 has a visual development system from Watcom VX-REXX. Another dialect was VisPro REXX from Hockware.

Portable Rexx by Kilowatt and Personal Rexx by Quercus are two Rexx interpreters designed for DOS and can be run under Windows as well using a command prompt. Since the mid-1990s, two newer variants of Rexx have appeared:

    NetRexx: compiles to Java byte-code via Java source code; this has no reserved keywords at all, and uses the Java object model, and is therefore not generally upwards-compatible with 'classic' Rexx.
    Object REXX: an object-oriented generally upwards-compatible version of Rexx.

In 1996 American National Standards Institute (ANSI) published a standard for Rexx: ANSI X3.274–1996 "Information Technology – Programming Language REXX".[13] More than two dozen books on Rexx have been published since 1985.

Rexx marked its 25th anniversary on 20 March 2004, which was celebrated at the REXX Language Association's 15th International REXX Symposium in Böblingen, Germany, in May 2004.

On October 12, 2004, IBM announced their plan to release their Object REXX implementation's sources under the Common Public License. Recent releases of Object REXX contain an ActiveX Windows Scripting Host (WSH) scripting engine implementing this version of the Rexx language.

On February 22, 2005, the first public release of Open Object Rexx (ooRexx) was announced. This product contains a WSH scripting engine which allows for programming of the Windows operating system and applications with Rexx in the same fashion in which Visual Basic and JScript are implemented by the default WSH installation and Perl, Tcl, Python third-party scripting engines.

As of January 2017 REXX was listed in the TIOBE index as one of the fifty languages in its top 100 not belonging to the top 50.[14]

In 2019, the 30th Rexx Language Association Symposium marked the 40th anniversary of Rexx. The symposium was held in Hursley, England, where Rexx was first designed and implemented.[15]
Toolkits

Rexx/Tk, a toolkit for graphics to be used in Rexx programmes in the same fashion as Tcl/Tk is widely available.

A Rexx IDE, RxxxEd, has been developed for Windows.[11] RxSock for network communication as well as other add-ons to and implementations of Regina Rexx have been developed, and a Rexx interpreter for the Windows command line is supplied in most Resource Kits for various versions of Windows and works under all of them as well as DOS.
Spelling and capitalization

Originally the language was called Rex (Reformed Executor); the extra "X" was added to avoid collisions with other products' names. REX was originally all uppercase because the mainframe code was uppercase oriented. The style in those days was to have all-caps names, partly because almost all code was still all-caps then. For the product it became REXX, and both editions of Mike Cowlishaw's book use all-caps. The expansion to REstructured eXtended eXecutor was used for the system product in 1984.[8]
Syntax
	
This section is written like a manual or guidebook. Please help rewrite this section from a descriptive, neutral point of view, and remove advice or instruction. (December 2012) (Learn how and when to remove this template message)
Looping

The loop control structure in Rexx begins with a DO and ends with an END but comes in several varieties. NetRexx uses the keyword LOOP instead of DO for looping, while ooRexx treats LOOP and DO as equivalent when looping.
Conditional loops

Rexx supports a variety of traditional structured-programming loops while testing a condition either before (do while) or after (do until) the list of instructions are executed:
```rexx
 do while [condition]
 [instructions]
 end

 do until [condition]
 [instructions]
 end
```
Repetitive loops

Like most languages, Rexx can loop while incrementing an index variable and stop when a limit is reached:
```rexx
 do index = start [to limit] [by increment] [for count]
 [instructions]
 end
```
The increment may be omitted and defaults to 1. The limit can also be omitted, which makes the loop continue forever.

Rexx permits counted loops, where an expression is computed at the start of the loop and the instructions within the loop are executed that many times:
```rexx
 do expression
 [instructions]
 end
```
Rexx can even loop until the program is terminated:
```rexx
 do forever
 [instructions]
 end
```rexx
A program can break out of the current loop with the leave instruction, which is the normal way to exit a do forever loop, or can short-circuit it with the iterate instruction.
Combined loops

Like PL/I, Rexx allows both conditional and repetitive elements to be combined in the same loop:[16]
```rexx
 do index = start [to limit] [by increment] [for count] [while condition]
 [instructions]
 end

 do expression [until condition]
 [instructions]
 end
```
Conditionals

Testing conditions with IF:
```rexx
 if [condition] then
 do
 [instructions]
 end
 else
 do
 [instructions]
 end
```
The ELSE clause is optional.

For single instructions, DO and END can also be omitted:
```rexx
 if [condition] then
 [instruction]
 else
 [instruction]
```
Indentation is optional, but it helps improve the readability.
Testing for multiple conditions

SELECT is Rexx's CASE structure, like many other constructs derived from PL/I. Like some implementations of CASE constructs in other dynamic languages, Rexx's WHEN clauses specify full conditions, which need not be related to each other. In that, they are more like cascaded sets of IF-THEN-ELSEIF-THEN-...-ELSE code than they are like the C or Java switch statement.
```rexx
 select
 when [condition] then
 [instruction] or NOP
 when [condition] then
 do
 [instructions] or NOP
 end
 otherwise
 [instructions] or NOP
 end
```
The NOP instruction performs "no operation", and is used when the programmer wishes to do nothing in a place where one or more instructions would be required.

The OTHERWISE clause is optional. If omitted and no WHEN conditions are met, then the SYNTAX condition is raised.
Simple variables

Variables in Rexx are typeless, and initially are evaluated as their names, in upper case. Thus a variable's type can vary with its use in the program:
```rexx
 say hello /* => HELLO */
 hello = 25
 say hello /* => 25 */
 hello = "say 5 + 3"
 say hello /* => say 5 + 3 */
 interpret hello /* => 8 */
 drop hello
 say hello /* => HELLO */
```
Compound variables

Unlike many other programming languages, classic Rexx has no direct support for arrays of variables addressed by a numerical index. Instead it provides compound variables.[17] A compound variable consists of a stem followed by a tail. A . (dot) is used to join the stem to the tail. If the tails used are numeric, it is easy to produce the same effect as an array.
```rexx
 do i = 1 to 10
 stem.i = 10 - i
 end
```
Afterwards the following variables with the following values exist: stem.1 = 9, stem.2 = 8, stem.3 = 7...

Unlike arrays, the index for a stem variable is not required to have an integer value. For example, the following code is valid:
```rexx
 i = 'Monday'
 stem.i = 2
```
In Rexx it is also possible to set a default value for a stem.
```rexx
 stem. = 'Unknown'
 stem.1 = 'USA'
 stem.44 = 'UK'
 stem.33 = 'France'
```
After these assignments the term stem.3 would produce 'Unknown'.

The whole stem can also be erased with the DROP statement.

 drop stem.

This also has the effect of removing any default value set previously.

By convention (and not as part of the language) the compound stem.0 is often used to keep track of how many items are in a stem, for example a procedure to add a word to a list might be coded like this:
```rexx
 add_word: procedure expose dictionary.
 parse arg w
 n = dictionary.0 + 1
 dictionary.n = w
 dictionary.0 = n
 return
```
It is also possible to have multiple elements in the tail of a compound variable. For example:
```rexx
 m = 'July'
 d = 15
 y = 2005
 day.y.m.d = 'Friday'
```
Multiple numerical tail elements can be used to provide the effect of a multi-dimensional array.

Features similar to Rexx compound variables are found in many other languages (including associative arrays in AWK, hashes in Perl and Hashtables in Java). Most of these languages provide an instruction to iterate over all the keys (or tails in Rexx terms) of such a construct, but this is lacking in classic Rexx. Instead it is necessary to keep auxiliary lists of tail values as appropriate. For example, in a program to count words the following procedure might be used to record each occurrence of a word.
```rexx
 add_word: procedure expose count. word_list
 parse arg w .
 count.w = count.w + 1 /* assume count. has been set to 0 */
 if count.w = 1 then word_list = word_list w
 return
```
and then later:
```rexx
 do i = 1 to words(word_list)
 w = word(word_list,i)
 say w count.w
 end
```
At the cost of some clarity it is possible to combine these techniques into a single stem:
```rexx
 add_word: procedure expose dictionary.
 parse arg w .
 dictionary.w = dictionary.w + 1
 if dictionary.w = 1 /* assume dictionary. = 0 */
 then do
 n = dictionary.0+1
 dictionary.n = w
 dictionary.0 = n
 end
 return
```
and later:
```rexx
 do i = 1 to dictionary.0
 w = dictionary.i
 say i w dictionary.w
 end
```
Rexx provides no safety net here, so if one of the words happens to be a whole number less than dictionary.0 this technique will fail mysteriously.

Recent implementations of Rexx, including IBM's Object REXX and the open source implementations like ooRexx include a new language construct to simplify iteration over the value of a stem, or over another collection object such as an array, table or list.
```rexx
 do i over stem.
 say i '-->' stem.i
 end
```
Keyword instructions
PARSE

The PARSE instruction is particularly powerful; it combines some useful string-handling functions. Its syntax is:

 parse [upper] origin [template]

where origin specifies the source:

    arg (arguments, at top level tail of command line)
    linein (standard input, e.g. keyboard)
    pull (Rexx data queue or standard input)
    source (info on how program was executed)
    value (an expression) with: the keyword with is required to indicate where the expression ends
    var (a variable)
    version (version/release number)

and template can be:

    list of variables
    column number delimiters
    literal delimiters

upper is optional; if specified, data will be converted to upper case before parsing.

Examples:

Using a list of variables as template
```rexx
 myVar = "John Smith"
 parse var myVar firstName lastName
 say "First name is:" firstName
 say "Last name is:" lastName
```
displays the following:

 First name is: John
 Last name is: Smith

Using a delimiter as template:
```rexx
 myVar = "Smith, John"
 parse var myVar LastName "," FirstName
 say "First name is:" firstName
 say "Last name is:" lastName
```
also displays the following:

 First name is: John
 Last name is: Smith

Using column number delimiters:
```rexx
 myVar = "(202) 123-1234"
 parse var MyVar 2 AreaCode 5 7 SubNumber
 say "Area code is:" AreaCode
 say "Subscriber number is:" SubNumber
```
displays the following:

 Area code is: 202
 Subscriber number is: 123-1234

A template can use a combination of variables, literal delimiters, and column number delimiters.
INTERPRET

The INTERPRET instruction evaluates its argument and treats its value as a Rexx statement. Sometimes INTERPRET is the clearest way to perform a task, but it is often used where clearer code is possible using, e.g., value().

Other uses of INTERPRET are Rexx's (decimal) arbitrary precision arithmetic (including fuzzy comparisons), use of the PARSE statement with programmatic templates, stemmed arrays, and sparse arrays.[how?]
```rexx
 /* demonstrate INTERPRET with square(4) => 16 */
 X = 'square'
 interpret 'say' X || '(4) ; exit'
 SQUARE: return arg(1)**2
```
This displays 16 and exits. Because variable contents in Rexx are strings, including rational numbers with exponents and even entire programs, Rexx offers to interpret strings as evaluated expressions.

This feature could be used to pass functions as function parameters, such as passing SIN or COS to a procedure to calculate integrals.

Rexx offers only basic math functions like ABS, DIGITS, MAX, MIN, SIGN, RANDOM, and a complete set of hex plus binary conversions with bit operations. More complex functions like SIN were implemented from scratch or obtained from third party external libraries. Some external libraries, typically those implemented in traditional languages, did not support extended precision.

Later versions (non-classic) support CALL variable constructs. Together with the built-in function VALUE, CALL can be used in place of many cases of INTERPRET. This is a classic program:
```rexx
 /* terminated by input "exit" or similar */
 do forever ; interpret linein() ; end

A slightly more sophisticated "Rexx calculator":

 X = 'input BYE to quit'
 do until X = 'BYE' ; interpret 'say' X ; pull X ; end
```
PULL is shorthand for parse upper pull. Likewise, ARG is shorthand for parse upper arg.

The power of the INTERPRET instruction had other uses. The Valour software package relied upon Rexx's interpretive ability to implement an OOP environment. Another use was found in an unreleased Westinghouse product called Time Machine that was able to fully recover following a fatal error.
NUMERIC
```rexx
 say digits() fuzz() form() /* => 9 0 SCIENTIFIC */
 say 999999999+1 /* => 1.000000000E+9 */
 numeric digits 10 /* only limited by available memory */
 say 999999999+1 /* => 1000000000 */

 say 0.9999999999=1 /* => 0 (false) */
 numeric fuzz 3
 say 0.99999999=1 /* => 1 (true) */
 say 0.99999999==1 /* => 0 (false) */

 say 100*123456789 /* => 1.23456789E+10 */
 numeric form engineering
 say 100*123456789 /* => 12.34567890E+9 */

 say 53 // 7   /* => 4   (rest of division)*/

  	Calculates √2 	Calculates e code 	

 numeric digits 50
 
 n=2
 r=1
 do forever /* Newton's method */
 rr=(n/r+r)/2
 if r=rr then leave
 r=rr
 end
 say "sqrt" n ' = ' r

	

 numeric digits 50
 e=2.5
 f=0.5
 do n=3
 f=f/n
 ee=e+f
 if e=ee then leave
 e=ee
 end
 say "e =" e
```
output 	sqrt 2 = 1.414213562373095048801688724209698078569671875377 	e = 2.7182818284590452353602874713526624977572470936998
SIGNAL

The SIGNAL instruction is intended for abnormal changes in the flow of control (see the next section). However, it can be misused and treated like the GOTO statement found in other languages (although it is not strictly equivalent, because it terminates loops and other constructs). This can produce difficult-to-read code.
Error handling and exceptions

It is possible in Rexx to intercept and deal with errors and other exceptions, using the SIGNAL instruction. There are seven system conditions: ERROR, FAILURE, HALT, NOVALUE, NOTREADY, LOSTDIGITS and SYNTAX. Handling of each can be switched on and off in the source code as desired.

The following program will run until terminated by the user:

```rexx
 signal on halt;
 do a = 1
	 say a
	 do 100000 /* a delay */
	 end
 end
 halt:
 say "The program was stopped by the user"
 exit
```
A signal on novalue statement intercepts uses of undefined variables, which would otherwise get their own (upper case) name as their value. Regardless of the state of the NOVALUE condition, the status of a variable can always be checked with the built-in function SYMBOL returning VAR for defined variables.

The VALUE function can be used to get the value of variables without triggering a NOVALUE condition, but its main purpose is to read and set environment variables, similar to POSIX getenv and putenv.
Conditions

ERROR
    Positive RC from a system command
FAILURE
    Negative RC for a system command (e.g. command doesn't exist)
HALT
    Abnormal termination
NOVALUE
    An unset variable was referenced
NOTREADY
    Input or output error (e.g. read attempts beyond end of file)
SYNTAX
    Invalid program syntax, or some other error condition
LOSTDIGITS
    Significant digits are lost (ANSI Rexx, not in TRL second edition)

When a condition is handled by SIGNAL ON, the SIGL and RC system variables can be analyzed to understand the situation. RC contains the Rexx error code and SIGL contains the line number where the error arose.

Beginning with Rexx version 4 conditions can get names, and there's also a CALL ON construct. That's handy if external functions do not necessarily exist:

 ChangeCodePage: procedure /* protect SIGNAL settings */
 signal on syntax name ChangeCodePage.Trap
 return SysQueryProcessCodePage()
 ChangeCodePage.Trap: return 1004 /* windows-1252 on OS/2 */

See also

    Free and open-source software portal

    ISPF
    XEDIT
    Comparison of computer shells
    Comparison of programming languages

Notes

The TSO EXEC command with an unqualified dataset name and neither the CLIST nor EXEC option examines the low level qualifier or EXEC.

    If the first line of a script fetched from SYSPROC is a comment containing REXX then it is treated as REXX rather than CLIST. A script fetched from SYSEXEC must be REXX.

References

Mark Hessling (October 25, 2012). "Regina Rexx Interpreter". SourceForge project regina-rexx. Retrieved February 10, 2014.
M. F. Cowlishaw. "IBM REXX Brief History". IBM. Retrieved August 15, 2006.
Melinda Varian. "REXX Symposium, May 1995".
"Catalog of All Documents (filter=rexx)". IBM library server. 2005. Retrieved February 10, 2014.
"Does ArcaOS include REXX support?". Retrieved September 3, 2020.
IBM Virtual Machine Facility /370: EXEC User's Guide (PDF) (Second ed.). International Business Machines Corporation. April 1975. GC20-1812-1.
EXEC 2 Reference (PDF) (Second ed.). International Business Machines Corporation. April 1982. p. 92. SC24-5219-1.
M. F. Cowlishaw (1984). "The design of the REXX language" (PDF). IBM Systems Journal (PDF). IBM Research. 23 (4): 333. doi:10.1147/sj.234.0326. Retrieved January 23, 2014. "Could there be a high astonishment factor associated with the new feature? If a feature is accidentally misapplied by the user and causes what appears to him to be an unpredictable result, that feature has a high astonishment factor and is therefore undesirable. If a necessary feature has a high astonishment factor, it may be necessary to redesign the feature."
M. F. Cowlishaw (February 18, 1981). "REX -- A Command Programming Language". SHARE. Retrieved August 15, 2006.
Lundin, Leigh; Woodruff, Mark (April 23, 1987). "T/REXX, a REXX compiler for CMS". U.S. Copyright Office. Washington, DC: Independent Intelligence Incorporated (TXu000295377).
Howard Fosdick (2005). Rexx Programmer's Reference. Wiley Publishing. p. 390. ISBN 0-7645-7996-7.
"Rexx Implementations". RexxLA. Archived from the original on September 24, 2006. Retrieved August 15, 2006.
While ANSI INCITS 274-1996/AMD1-2000 (R2001) and ANSI INCITS 274-1996 (R2007) are chargeable, a free draft can be downloaded: "American National Standard for Information Systems – Programming Language REXX" (PDF). X3J18-199X.
"The Next 50 Programming Languages". TIOBE index. tiobe.com. 2017. Archived from the original on January 19, 2017. Retrieved January 10, 2017.
"RexxLA - Symposium Schedule".
M. F. Cowlishaw (1990). The Rexx Language - A Practical Approach to Programming (2nd ed.). Prentice Hall. ISBN 0-13-780651-5.

    "Six Rules of Thumb for Rexx".

Further reading

    Callaway, Merrill. The ARexx Cookbook: A Tutorial Guide to the ARexx Language on the Commodore Amiga Personal Computer. Whitestone, 1992. ISBN 978-0963277305.
    Callaway, Merrill. The Rexx Cookbook: A Tutorial Guide to the Rexx Language in OS/2 & Warp on the IBM Personal Computer. Whitestone, 1995. ISBN 0-9632773-4-0.
    Cowlishaw, Michael. The Rexx Language: A Practical Approach to Programming. Prentice Hall, 1990. ISBN 0-13-780651-5.
    Cowlishaw, Michael. The NetRexx Language. Prentice Hall, 1997. ISBN 0-13-806332-X.
    Daney, Charles. Programming in REXX. McGraw-Hill, TX, 1990. ISBN 0-07-015305-1.
    Ender, Tom. Object-Oriented Programming With Rexx. John Wiley & Sons, 1997. ISBN 0-471-11844-3.
    Fosdick, Howard. Rexx Programmer's Reference. Wiley/Wrox, 2005. ISBN 0-7645-7996-7.
    Gargiulo, Gabriel. REXX with OS/2, TSO, & CMS Features. MVS Training, 1999 (third edition 2004). ISBN 1-892559-03-X.
    Goldberg, Gabriel and Smith, Philip H. The Rexx Handbook . McGraw-Hill, TX, 1992. ISBN 0-07-023682-8.
    Goran, Richard K. REXX Reference Summary Handbook. CFS Nevada, Inc.,1997. ISBN 0-9639854-3-4.
    IBM Redbooks. Implementing Rexx Support in Sdsf. Vervante, 2007. ISBN 0-7384-8914-X.
    Kiesel, Peter C. Rexx: Advanced Techniques for Programmers. McGraw-Hill, TX, 1992. ISBN 0-07-034600-3.
    Marco, Lou ISPF/REXX Development for Experienced Programmers. CBM Books, 1995. ISBN 1-878956-50-7
    O'Hara, Robert P. and Gomberg, David Roos. Modern Programming Using Rexx. Prentice Hall, 1988. ISBN 0-13-597329-5.
    Rudd, Anthony S. 'Practical Usage of TSO REXX'. CreateSpace, 2012. ISBN 978-1475097559.
    Schindler, William. Down to Earth Rexx. Perfect Niche Software, 2000. ISBN 0-9677590-0-5.

