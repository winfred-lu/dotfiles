#/bin/sh

# Print color names in 4-bit color.
#
# Reference:  https://en.wikipedia.org/wiki/ANSI_escape_code

bold()
{
    echo  "\033[1m${1}\033[0m"
}

dim()
{
    echo  "\033[2m${1}\033[0m"
}

italic()
{
    echo  "\033[3m${1}\033[0m"
}

underline()
{
    echo  "\033[4m${1}\033[0m"
}

black()
{
    echo  -n "\033[30;47m${1}\033[0m"
    echo  "\t \033[90mbright ${1}\033[0m"
}

red()
{
    echo  -n "\033[31m${1}\033[0m"
    echo  "\t \033[91mbright ${1}\033[0m"
}

green()
{
    echo  -n "\033[32m${1}\033[0m"
    echo  "\t \033[92mbright ${1}\033[0m"
}

yellow()
{
    echo  -n "\033[33m${1}\033[0m"
    echo  "\t \033[93mbright ${1}\033[0m"
}

blue()
{
    echo  -n "\033[34m${1}\033[0m"
    echo  "\t \033[94mbright ${1}\033[0m"
}

purple()
{
    echo  -n "\033[35m${1}\033[0m"
    echo  "\t \033[95mbright ${1}\033[0m"
}

cyan()
{
    echo  -n "\033[36m${1}\033[0m"
    echo  "\t \033[96mbright ${1}\033[0m"
}

white()
{
    echo  -n "\033[37m${1}\033[0m"
    echo  "\t \033[97mbright ${1}\033[0m"
}

# bold "bold"
# dim "dim"
# italic "italic"
# underline "underline"

black "black"
red "red"
green "green"
yellow "yellow"
blue "blue"
purple "purple"
cyan "cyan"
white "white"

