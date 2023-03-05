# welcome dev cups thought active
software editor thought active microsoft rexx lang

CUPS

    Article
    Talk

    Read
    Edit
    View history

From Wikipedia, the free encyclopedia
For other articles with a similar title, see Cups (disambiguation).
Question book-new.svg
	
This article relies excessively on references to primary sources. Please improve this article by adding secondary or tertiary sources.
Find sources: "CUPS" – news · newspapers · books · scholar · JSTOR (May 2011) (Learn how and when to remove this template message)
CUPSCUPS.svg
Original author(s)	Michael Sweet (Easy Software Products)
Developer(s)	Apple Inc.
Initial release	June 9, 1999
Stable release	
2.3.6[1] Edit this on Wikidata / 25 May 2022
Repository	

    github.com/apple/cups Edit this at Wikidata

Written in	C
Operating system	Unix-like, Windows, ArcaOS[2]
Successor	OpenPrinting CUPS
Type	Print server
License	Apache License 2.0[3]
Website	www.cups.org
OpenPrinting CUPSDeveloper(s)	OpenPrinting and community
Stable release	
2.4.2[4] / May 26, 2022; 9 months ago
Repository	github.com/openprinting/cups
Predecessor	Apple CUPS
Website	openprinting.github.io/cups/

CUPS (formerly an acronym for Common UNIX Printing System) is a modular printing system for Unix-like computer operating systems which allows a computer to act as a print server. A computer running CUPS is a host that can accept print jobs from client computers, process them, and send them to the appropriate printer.

CUPS consists of a print spooler and scheduler, a filter system that converts the print data to a format that the printer will understand, and a backend system that sends this data to the print device. CUPS uses the Internet Printing Protocol (IPP) as the basis for managing print jobs and queues. It also provides the traditional command line interfaces for the System V and Berkeley print systems, and provides support for the Berkeley print system's Line Printer Daemon protocol and limited support for the Server Message Block (SMB) protocol. System administrators can configure the device drivers which CUPS supplies by editing text files in Adobe's PostScript Printer Description (PPD) format. There are a number of user interfaces for different platforms that can configure CUPS, and it has a built-in web-based interface. CUPS is free software, provided under the Apache License.
History

Michael Sweet, who owned Easy Software Products, started developing CUPS in 1997 and the first public betas appeared in 1999.[5][6] The original design of CUPS used the Line Printer Daemon protocol (LPD), but due to limitations in LPD and vendor incompatibilities, the Internet Printing Protocol (IPP) was chosen instead. CUPS was initially called "The Common UNIX Printing System". This name was shortened to just "CUPS" beginning with CUPS 1.4 due to legal concerns with the UNIX trademark.[7] CUPS was quickly adopted as the default printing system for most Linux distributions. In March 2002, Apple Inc. adopted CUPS as the printing system for Mac OS X 10.2.[8] In February 2007, Apple Inc. hired chief developer Michael Sweet and purchased the CUPS source code.[9] On December 20, 2019, Michael Sweet announced on his blog that he had left Apple.[10][11] In 2020, the OpenPrinting organization forked the project, with Michael Sweet continuing work on it.[12][13]
Overview
Cups simple.svg

CUPS provides a mechanism that allows print jobs to be sent to printers in a standard fashion. The print data goes to a scheduler[14] which sends jobs to a filter system that converts the print job into a format the printer will understand.[15] The filter system then passes the data on to a backend—a special filter that sends print data to a device or network connection.[16] The system makes extensive use of PostScript and rasterization of data to convert the data into a format suitable for the destination printer.

CUPS offers a standard and modularised printing system that can process numerous data formats on the print server. Before CUPS, it was difficult to find a standard printer management system that would accommodate the very wide variety of printers on the market using their own printer languages and formats. For instance, the System V and Berkeley printing systems were largely incompatible with each other, and they required complicated scripts and workarounds to convert the program's data format to a printable format. They often could not detect the file format that was being sent to the printer and thus could not automatically and correctly convert the data stream. Additionally, data conversion was performed on individual workstations rather than a central server.

CUPS allows printer manufacturers and printer-driver developers to more easily create drivers that work natively on the print server. Processing occurs on the server, allowing for easier network-based printing than with other Unix printing systems. With Samba installed, users can address printers on remote Windows computers, and generic PostScript drivers can be used for printing across the network.
Scheduler

The CUPS scheduler implements Internet Printing Protocol (IPP) over HTTP/1.1. A helper application (cups-lpd) converts Line Printer Daemon protocol (LPD) requests to IPP. The scheduler also provides a web-based interface for managing print jobs, the configuration of the server, and for documentation about CUPS itself.[14]

An authorization module controls which IPP and HTTP messages can pass through the system.[17] Once the IPP/HTTP packets are authorized they are sent to the client module, which listens for and processes incoming connections. The client module is also responsible for executing external CGI programs as needed to support web-based printers, classes, and job status monitoring and administration.[18] Once this module has processed its requests, it sends them to the IPP module which performs Uniform Resource Identifier (URI) validation to prevent a client from sidestepping any access controls or authentication on the HTTP server.[19] The URI is a text string that indicates a name or address that can be used to refer to an abstract or physical resource on a network.

The scheduler allows for classes of printers. Applications can send requests to groups of printers in a class, allowing the scheduler to direct the job to the first available printer in that class.[20] A jobs module manages print jobs, sending them to the filter and backend processes for final conversion and printing, and monitoring the status messages from those processes.[21]

The CUPS scheduler utilizes a configuration module, which parses configuration files, initializes CUPS data structures, and starts and stops the CUPS program. The configuration module will stop CUPS services during configuration file processing and then restart the service when processing is complete.[22]

A logging module handles the logging of scheduler events for access, error, and page log files. The main module handles timeouts and dispatch of I/O requests for client connections, watching for signals, handling child process errors and exits, and reloading the server configuration files as needed.[23]

Other modules used by the scheduler include:

    the MIME module, which handles a Multipurpose Internet Mail Extensions (MIME) type and conversion database used in the filtering process that converts print data to a format suitable for a print device;[24]
    a PPD module that handles a list of Postscript Printer Description (PPD) files;[25]
    a devices module that manages a list of devices that are available in the system;[26]
    a printers module that handles printers and PPDs within CUPS.[27]

Filter system
CUPS allows users to send different data to the CUPS server and have that data converted into a format the printer will understand and be able to print

CUPS can process a variety of data formats on the print server. It converts the print-job data into the final language/format of the printer via a series of filters.[28][29] It uses MIME types for identifying file formats.
MIME databases

After the CUPS system has assigned the print job to the scheduler, it is passed to the CUPS filter system. This converts the data to a format suitable for the printer. During start-up, the CUPS daemon loads two MIME databases: mime.types that defines the known file types that CUPS can accept data for, and mime.convs that defines the programs that process each particular MIME type.[30]

The mime.types file has the syntax:

mimetype { [file-extensions] | [pattern-match] }

For example, to detect an HTML file, the following entry would be applicable:

text/html html htm \

    printable(0,1024) + (string(0,"<HTML>") string(0,"<!DOCTYPE"))

The second line matches the file contents to the specified MIME type by determining that the first kilobyte of text in the file holds printable characters and that those characters include HTML markup. If the pattern above matches, then the filter system would mark the file as the MIME type text/html.[31]

The mime.convs file has the syntax:

source destination cost program

The source field designates the MIME type that is determined by looking up the mime.types file, while the destination field lists the type of output requested and determines what program should be used. This is also retrieved from mime.types. The cost field assists in the selection of sets of filters when converting a file. The last field, program, determines which filter program to use to perform the data conversion.[32]

Some examples:

text/plain application/postscript 50 texttops
application/vnd.cups-postscript application/vnd.cups-raster 50 pstoraster
image/* application/vnd.cups-postscript 50 imagetops
image/* application/vnd.cups-raster 50 imagetoraster

Filtering process

The filtering process works by taking input data pre-formatted with six arguments:

    the job ID of the print job
    the user name
    the job name
    the number of copies to print
    any print options
    the filename (though this is unnecessary if it has been redirected from standard input).[29]

It then determines the type of data that is being input and the filter to be used through the use of the MIME databases; for instance, image data will be detected and processed through a particular filter, and HTML data detected and processed through another filter.

CUPS can convert supplied data either into PostScript data or directly into raster data. If it is converted into PostScript data an additional filter is applied called a prefilter, which runs the PostScript data through another PostScript converter so that it can add printer-specific options like selecting page ranges to print, setting n-up mode and other device-specific things.[33] After the pre-filtering is done, the data can either be sent directly to a CUPS backend if using a PostScript printer, or it can be passed to another filter like Foomatic by linuxprinting.org. Alternatively, it can be passed to Ghostscript, which converts the PostScript into an intermediary CUPS-raster format.[34] The intermediary raster format is then passed onto a final filter which converts the raster data to a printer-specific format. The default filters included with CUPS include:

    raster to PCL
    raster to ESC/P or ESC/P2 (an Epson printer language, now largely superseded by their new ESC/P-Raster format)
    raster to Dymo (another printer company).
    raster to Zebra Programming Language or ZPL (a Zebra Technologies printer language)

As of 2009 other proprietary languages like GDI or SPL (Samsung Printer Language) are supported by Splix, a raster to SPL translator.[35]

However, several other alternatives can integrate with CUPS. HPLIP (previously known as HP-IJS) provides Linux+CUPS drivers for HP printers, Gutenprint (previously known as Gimp-Print) is a range of high-quality printer drivers for (mostly) inkjet printers, and TurboPrint for Linux has another range of quality printer drivers for a wide range of printers.
Backends

The backends are the ways in which CUPS sends data to printers. There are several backends available for CUPS: parallel, serial, and USB ports, cups-pdf[36] PDF Virtual Printing, as well as network backends that operate via the IPP, JetDirect (AppSocket), Line Printer Daemon ("LPD"), and SMB protocols.

A new mdns backend in CUPS 1.4 provides Bonjour (DNS-SD) based printer discovery.[37] In CUPS 1.6, Bonjour printer discovery and sharing using Avahi is also supported.[38]
Compatibility

CUPS provides both the System V and Berkeley printing commands, so users can continue with traditional commands for printing via CUPS. CUPS uses port 631 (TCP and UDP), which is the standard IPP port, and optionally on port 515 by inetd, launchd, the Solaris Service Management Facility, or xinetd which use the cups-lpd helper program to support LPD printing. When CUPS is installed the lp System V printing system command and the lpr Berkeley printing system commands are installed as compatible programs. This allows a standard interface to CUPS and allows maximum compatibility with existing applications that rely on these printing systems.
User interface tools

Several tools exist to help set up CUPS.
CUPS web-based administration interface
CUPS web-based interface
Printers information in CUPS web-based interface

On all platforms, CUPS has a web-based administration interface that runs on port 631.[39] It particularly helps organisations that need to monitor print jobs and add print queues and printers remotely.

CUPS 1.0 provided a simple class, job, and printer-monitoring interface for web browsers.

CUPS 1.1 replaced this interface with an enhanced administration interface that allows users to add, modify, delete, configure, and control classes, jobs, and printers.

CUPS 1.2 and later provide a revamped web interface which features improved readability and design, support for automatically discovered printers, and better access to system logs and advanced settings.
GNOME
GNOME Settings as of version 40

In GNOME starting from GNOME 3, CUPS printing has been handled in the Settings application, which is part of the GNOME Core Applications. The GUI can add CUPS printers and manage CUPS printers and queues.[40] Before GNOME 3, the GNOME Print Settings (formerly called CUPS Manager) were used to perform these tasks.[41]

GNOME's widget toolkit GTK+ included integrated printing support based on CUPS in its version 2.10, released in 2006.
KDE
KDEPrint

The KDEPrint framework for KDE contains various GUI tools that act as CUPS front ends and allows the administration of classes, print queues and print jobs; it includes a printer wizard to assist with adding new printers amongst other features.[42] KDEPrint first appeared in KDE 2.2.

KDEPrint supports several different printing platforms, with CUPS one of the best supported. It replaced a previous version of printing support in KDE, qtcups and is backwards compatible with this module of KDE. As of 2009 kprinter, a dialogue-box program, serves as the main tool for sending jobs to the print device; it can also be started from the command line. KDEPrint includes a system to pre-filter any jobs before they are handed over to CUPS, or to handle jobs all on its own, such as converting files to PDF. These filters are described by a pair of Desktop/XML files.

KDEPrint's main components include:

    a Print Dialog box, which allows printer properties to be modified
    a Print Manager, which allows management of printers, such as adding and removing printers, through an Add Printer Wizard
    a Job Viewer/Manager, which manages printer jobs, such as hold/release, cancel and move to another printer
    a CUPS configuration module (integrated into KDE)

Mac OS X

In Mac OS X 10.5, printers are configured in the Print & Fax panel in System Preferences, and in printer proxy applications which display the print queues and allow additional configuration after printers are set up. Earlier versions of Mac OS X also included a Printer Setup Utility, which supplied configuration options missing from earlier versions of the Print & Fax preference pane.[citation needed]
PrinterSetup

The PrinterSetup system can manage CUPS queues. It takes the approach of assigning a text file to describe each print queue. These 'PrinterSetupFiles' may then be added to other text files called 'PrinterSetupLists'. This allows logical grouping of printers. As of 2009 the PrinterSetup project remains in its infancy.[43]
Red Hat Linux/Fedora
Fedora provides a print manager that can modify CUPS-based printers

Starting with Red Hat Linux 9, Red Hat provided an integrated print manager based on CUPS and integrated into GNOME. This allowed adding printers via a user interface similar to the one Microsoft Windows uses, where a new printer could be added using an add new printer wizard, along with changing default printer properties in a window containing a list of installed printers. Jobs could also be started and stopped using a print manager, and the printer could be paused using a context menu that pops up when the printer icon is right-clicked.

Eric Raymond criticised this system in his piece The Luxury of Ignorance. Raymond had attempted to install CUPS using the Fedora Core 1 print manager but found it non-intuitive; he criticised the interface designers for not designing with the user's point of view in mind. He found the idea of printer queues not obvious because users create queues on their local computer but these queues are actually created on the CUPS server.

He also found the plethora of queue-type options confusing as he could choose from between networked CUPS (IPP), networked Unix (LPD), networked Windows (SMB), networked Novell (NCP) or networked JetDirect. He found the help file singularly unhelpful and largely irrelevant to a user's needs. Raymond used CUPS as a general topic to show that user-interface design on Linux desktops needs rethinking and more careful design. He stated:[44]

    The meta-problem here is that the configuration wizard does all the approved rituals (GUI with standardized clicky buttons, help popping up in a browser, etc. etc.) but doesn't have the central attribute these are supposed to achieve: discoverability. That is, the quality that every point in the interface has prompts and actions attached to it from which you can learn what to do next. Does your project have this quality?

ESP Print Pro

Easy Software Products, the original creators of CUPS, created a GUI, provided support for many printers and implemented a PostScript RIP. ESP Print Pro ran on Windows, UNIX and Linux, but is no longer available and support for this product ended on December 31, 2007.[45]
See also

    Free and open-source software portal

    Foomatic
    Gutenprint
    HP Linux Imaging and Printing
    Lp (Unix)
    LPRng
    Scanner Access Now Easy
    Spooling
    Xprint

References

"v2.3.6". May 25, 2022. Retrieved November 22, 2022.
"CUPS 2". Retrieved September 3, 2020.
"CUPS Software License Agreement". License Exceptions. Archived from the original on November 10, 2017. Retrieved November 8, 2017.
"Releases · OpenPrinting/cups". GitHub. Retrieved February 3, 2022.
Sweet, Michael (June 9, 1999). "A Bright New Future for Printing on Linux". Linux Today. Archived from the original on October 5, 2007.
Sweet, Michael (June 11, 1999). "The Future Brightens for Linux Printing". Linux Today. Archived from the original on January 8, 2005.
"CUPS Presentation at 2012 Open Printing Summit" (PDF). April 24, 2012. Archived (PDF) from the original on February 14, 2017.
"CUPS Licensed for Use in Apple Operating Systems!". Easy Software Products (press release). March 1, 2002. Archived from the original on December 8, 2015.
"CUPS Purchased by Apple Inc" (Press release). CUPS. July 11, 2007. Archived from the original on March 31, 2014. Retrieved June 5, 2014.
Anderson, Tim (October 15, 2020). "Has Apple abandoned CUPS, the Linux's world's widely used open-source printing system? Seems so". The Register. Retrieved January 7, 2023.
"Thoughts on Leaving Apple..." www.msweet.org.
Proven, Liam (November 10, 2022). "OpenPrinting keeps old printers working, even on Windows". The Register. Retrieved January 7, 2023.
Michael Sweet (October 17, 2020). "Add an OpenPrinting changes file". CUPS (OpenPrinting fork) repository. GitHub.
"CUPS Design Description". CUPS documentation. Apple Inc. Scheduler. Retrieved December 31, 2020.
"CUPS Design Description". CUPS documentation. Apple Inc. Filters. Retrieved December 31, 2020.
"CUPS Design Description". CUPS documentation. Apple Inc. Backend. Retrieved December 31, 2020.
"Authorization". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"Authorisation". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"IPP". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"Classes". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 6, 2007. Retrieved January 9, 2007.
"Jobs". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 6, 2007. Retrieved January 9, 2007.
"Configuration". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"Logging". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"MIME". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"PPD". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"Devices". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"Printers". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"Filters". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 6, 2007. Retrieved January 9, 2007.
"Filters". Easy Software Products. CUPS Software Design. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
"File Typing and Filtering". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 6, 2007. Retrieved January 9, 2007.
"mime.types". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 6, 2007. Retrieved January 9, 2007.
"mime.convs". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 6, 2007. Retrieved January 9, 2007.
"pstops". Easy Software Products. CUPS Software Administrators Manual. Archived from the original on January 10, 2007. Retrieved January 9, 2007.
The MIME type for the CUPS raster format is application/vnd.cups-raster.
"SPL driver for UNIX". splix.sourceforge.net.
"Debian - Details of package cups-pdf in wheezy". Archived from the original on May 1, 2015.
"What's New in CUPS 1.4". Archived from the original on November 2, 2012.
"What's New in CUPS 1.6". Archived from the original on October 4, 2012.
"Managing Printers from the Web". CUPS Software Administrators Manual. Archived from the original on December 25, 2004.
"Handling printing in GNOME Red Hat Enterprise Linux 8". Red Hat Customer Portal. Red Hat. Retrieved May 12, 2021.
"gnome-cups-manager". Archived from the original on September 15, 2014.
printing.kde.org Webmaster (n.d.). "KDEPrint Homepage". Archived from the original on May 9, 2008. Retrieved April 2, 2008.
"Printer Setup is in a prototyping phase". Lucid Information Systems. Archived from the original on August 28, 2008.
"The Luxury of Ignorance: An Open-Source Horror Story". Archived from the original on May 28, 2010.

    "Easy Software Products' ESP Print Pro". Archived from the original on June 19, 2009.

Further reading

    Design of CUPS Filtering System — including the context for Mac OS X ("Jaguar"). LinuxPrinting.org. Retrieved January 5, 2005.
    KDE. KDEPrint information. KDE-printing website. Retrieved January 14, 2005.
    How to Manage Printers in Linux, Linux.com, 2015-04-27.

External links

    "CUPS". Freecode.
    OpenPrinting
    Universal Plug and Play – Printer Device V 1.0 and Printer Basic Service V 1.0

    vte

Free and open-source software
General	

    Alternative terms for free software Comparison of open-source and closed-source software Comparison of source-code-hosting facilities Free software Free software project directories Gratis versus libre Long-term support Open-source software Open-source software development Outline Timeline

Software
packages	

    Audio Bioinformatics Codecs Configuration management Drivers
        Graphics Wireless Health Mathematics Office Suites Operating systems Programming languages Routing Television Video games Web applications
        E-commerce Android apps iOS apps Commercial Formerly proprietary Formerly open-source

Community	

    Free software movement History Open-source-software movement Events

Organisations	

    Free Software Movement of India Free Software Foundation

Licenses	

    AFL Apache APSL Artistic Beerware BSD Creative Commons CDDL EPL Free Software Foundation
        GNU GPL GNU LGPL ISC MIT MPL Python Python Software Foundation License Shared Source Initiative Sleepycat Unlicense WTFPL zlib

Types and
standards	

    Comparison of licenses Contributor License Agreement Copyleft Debian Free Software Guidelines Definition of Free Cultural Works Free license The Free Software Definition The Open Source Definition Open-source license Permissive software license Public domain Viral license

Challenges	

    Digital rights management Hardware restrictions License proliferation Mozilla software rebranding Proprietary device drivers Proprietary firmware Proprietary software SCO/Linux controversies Software patents Software security Trusted Computing

Related
topics	

    Forking GNU Manifesto Microsoft Open Specification Promise Open-core model Open-source hardware Shared Source Initiative Source-available software The Cathedral and the Bazaar Revolution OS

    Portal Category

Categories:

    1999 softwareApple Inc. acquisitionsApple Inc. softwareComputer printingDevice driversFree PDF softwareFree software programmed in CUnix network-related softwareSoftware using the Apache license