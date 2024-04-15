
#!/bin/bash

echo -n "Enter a group name: "
read GROUP
  grep -q $GROUP /etc/group
while [ $? -eq 0 ]
    do
       echo -e "Group already exists\n"
       echo -e "Please enter another group name: \n"
       read GROUP
       grep -q $GROUP /etc/group
    done

echo -e "Enter the username for the new user: \n"
read USER
  grep -q $USER /etc/passwd
while [ $? -eq 0 ]
    do
      echo -e "User already created\n"
      echo -n "Please enter another username: "
      read USER
      grep -q $USER /etc/passwd
    done

groupadd $GROUP
useradd -m -s /bin/bash -g $GROUP $USER
passwd $USER

echo -e "User created\n"

mkdir /$USER
chown $USER.$GROUP /$USER
chmod 1770 /$USER
