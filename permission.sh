user=$1
file="/home/${user}/.htaccess"
echo "Checking $file"
if test ! -f "$file"; then

    touch $file
    chown $user:$user $file
    chattr +i $file
    echo "Done"
else
   touch $file
   chattr +i $file
   echo "Done"
fi
