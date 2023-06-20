The PS1 prompt can be customized with various special characters that are replaced with actual data when the prompt is displayed. Here are some commonly used ones:

\d: The date, in "Weekday Month Date" format (e.g., "Tue May 26").
\h: The hostname, up to the first '.'.
\H: The hostname.
\j: The number of jobs currently managed by the shell
\l: The basename of the shell’s terminal device name.
\n: A newline.
\r: A carriage return.
\s: The name of the shell (the basename of the shell's command name).
\t: The current time in 24-hour HH:MM:SS format.
\T: The current time in 12-hour HH:MM:SS format.
\@: The current time in 12-hour am/pm format.
\A: The current time in 24-hour HH:MM format.
\u: The username of the current user.
\v: The version of Bash (e.g., 2.00, 3.00, 4.00).
\V: The release of Bash, version + patch level (e.g., 2.05b.0).
\w: The current working directory, with $HOME abbreviated with a tilde (~).
\W: The basename of the current working directory, with $HOME abbreviated with a tilde.
\!: The history number of this command.
\#: The command number of this command.
\$: If the effective UID is 0, it displays a #, otherwise a $.
The last one, \$, can be used to change the prompt when you're root. When you're logged in as the root user, the UID is 0, so this will display #. For all other users, it will display $.

To visually distinguish when you're logged in as root, you might want to change the color of the prompt. Here's an example:


\d \h \H \j \l \s \t \T \@ \A \u \v \V \w \W \! \# \$




# simple
# export PS1="\n\e[32;1m(\u@\h) \e[35;1m[\w] \e[33;1m\$\e[0m\n"
# problem with line wrapping
# export PS1="\e[1;31m┌──\e[1;32m(\u@\h) \e[1;35m[\w] \e[31;3m.\n\e[1;31m└─\e[1;33m\$ \e[0m"
# export PS1="\[\e[0m\]\[\e[1;31m\]┌──\[\e[1;35m\](\[\e[1;31m\]\u\[\e[1;35m\]@\[\e[1;34m\]\h\[\e[1;35m\]) [\w] \[\e[33;3m\]\A\[\e[0m\]\n\[\e[1;31m\]└─\[\e[1;33m\]\$ \[\e[0m\]"

# nope
export PS1="\n\e[1;31m┌──\e[1;32m(\e[1;34m\u\e[1;32m@\h) \e[1;35m[\w] \e[33;3m\T\e[1;31m\n└─\e[1;33m\$ \e[0m"

