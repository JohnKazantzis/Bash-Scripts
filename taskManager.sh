#!/usr/bin/env bash

if [ ! -e ./tasks.txt ]; then
  touch ./tasks.txt
  echo "tasks.txt file created!"
else
  printf "$(cat tasks.txt)\n\n"
fi

flag="y"

while [ "$flag" == "y" ];
do
  read -p "You want to add or delete tasks? (add/del): " action
  if [ "$action" == "del" ]; then
    read -p "Input the name of the task you want to delete: " delName
    sed -i "/${delName}/d" tasks.txt
  elif [ "$action" == "add" ]; then
    read -p "Input the name of the task you want to add: " addName
    read -p "Input the deadline of the task: " deadline
    echo "${addName} ${deadline}" >> tasks.txt
  fi
  printf "\n$(cat tasks.txt)\n\n"
  read -p "Do you want to continue? (y/n): " flag
done
