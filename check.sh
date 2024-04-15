
#!/bin/bash

echo "Enter a username to check:"
read name
if grep $name /etc/passwd > /dev/null
then 
    echo "$name is one this system"
else 
    echo "$name does not exist"
fi 
