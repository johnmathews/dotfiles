
# pip_install_if_required is called by pvp which is definied in ~/.zshenv
# it checks if a python modules is already present, and installs it if it isnt
# note: it is simple and doesn't handle cases when a module is installed but returns 
# a non standard message on import.

# pip_install_if_required() {
#   echo "checking if $1 is installed"
#   python -c "import $1"
#   # check the exit code of previous command. if exit code is 1 then the module doesnt exist, so install it.
#   if [ $? -eq 1 ]
#   then
#     python -m pip install "$1"
#     if [ $? -eq 1 ]
#     then
#       echo "....... installed $1"
#     else
#       echo "....... failed to install $1"
#     fi
#   else
#     echo "....... $1 is already present"
#   fi
# }
