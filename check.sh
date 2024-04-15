
#!/bin/bash

#1.1       2024.04
echo "Enter a username to check:"
read name
if grep $name /etc/passwd > /dev/null
then 
    echo "$name is one this system"
else 
    echo "$name does not exist"
fi 
echo "Eto sdelano git"
