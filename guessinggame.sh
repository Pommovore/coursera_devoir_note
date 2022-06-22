#!/bin/bash

count_of_files_in_current_directory () {
  local count_l=(`ls -al|wc`)
#  local nb_files_dir
  let nb_files_dir=${count_l[0]}-3 # remove count of "total ??" "." and ".."
  return $nb_files_dir
}

count_of_files_in_current_directory
nb_files=$?
not_found="true"
while [ $not_found ]; do
  echo "how many files in this directory ? "
  read user_guess
  if [ $user_guess -lt $nb_files ]; then
    echo "There are more files, try again..."
  elif [ $user_guess -gt $nb_files ]; then
    echo "There are les files, try again..."
  else
    echo "You're correct !"
    not_found=""
  fi
done
