# 9.1 How the Web Works

###A. What are some of the key design philosophies of the Linux operating system?

* The Linux model of software development discards the entire concept of organized development, source code control systems, structured bug reporting, and statistical quality control. Linux is, and likely always will be, a dedicated programmer's operating system.

* There is no single organization responsible for developing Linux. Anyone with enough know-how has the opportunity to help develop and debug the kernel, port new software, write documentation, and help new users.

* Several conventions have sprung up around the development effort. Anyone who wishes to have their code included in the "official'' kernel, mails it to Linus Torvalds. He will test and include the code in the kernel as long as it doesn't break things or go against the overall design of the system.

* The system itself is designed using an open-ended, feature-minded approach. The number of new features and critical changes to the system has recently diminished, and the general rule is that a new version of the kernel will be released every few weeks. Of course, this is a rough figure. New release criteria include the number of bugs to be fixed, feedback from users testing pre-release versions of the code, and Mr. Torvald's response.

* As long as the revision appears to be free of critical or recurring bugs, it is considered to be stable, and the new version is released. The thrust behind Linux development is not to release perfect, bug-free code: it is to develop a free UNIX implementation. 


*From Michingan State University:*

A. *Conceptually simple*

* User is presented with many simple utilities, known as tools.
* A tool does only one thing, but does it well

B. *Consistent*

* Uniform interface for most of the commands (in the form of pipe-able commands or filters)
* Similar functions on different objects handled in uniform manner
∗ Files and I/O devices are treated in the same manner

C. *Extendible*

* Combine simple tools to build complex tools (again, filters)
* Create custom environments through aliasing and window managers
∗ Tailorability to individual preferences is there to make the machine work for the people and not vice versa

D. *Modular*

* Most of the applications are not part of the operating system, and hence, can be replaced at will
* You have a choice of shells and other general purpose programs, and if you do not feel satisfied, you can easily
write one of your own choice


###B. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a virtual machine that can also act as a virtualized server by mimicking a dedicated server within a shared hosting environment (ie. AWS, Digital Ocean, etc.) It is technically both shared hosting and dedicated hosting.

###C. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

On Linux, the Root user is equivalent to the Administrator user on Windows. However, when you log in as your own user account (aka, NOT root), programs you run are restricted from writing to the rest of the system (SECURITY!) – they can only write to your home folder. You can’t modify system files without gaining root permissions. This helps keep your computer secure. 