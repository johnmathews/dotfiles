
pip_install_if_required() {
  echo "checking if $1 is installed"
  python -c "import $1"
  # check the exit code of previous command. if exit code is 1 then the module doesnt exist, so install it.
  if [ $? -eq 1 ]
  then 
    python -m pip install "$1"
    if [ $? -eq 1 ]
    then
      echo "....... installed $1"
    else
      echo "....... failed to install $1"
    fi
  else
    echo "....... $1 is already present"
  fi
}
