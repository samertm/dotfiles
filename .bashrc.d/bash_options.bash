# If set, bash checks the window size after each command and, if necessary,
# updates the values of LINES and COLUMNS.
#
shopt -s checkwinsize

# If set, bash attempts to save all lines of a multiple-line command in the
# same history entry. This allows easy re-editing of multi-line commands.
#
shopt -s cmdhist

# If set, the history list is appended to the file named by the value of the
# HISTFILE variable when the shell exits, rather than overwriting the file.
#
shopt -s histappend
