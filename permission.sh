user=$1
file="/home/${user}/.htaccess"
public_html="/home/${user}/public_html"

if [ ! -z "$user" -a "$user" != " "  -a  -d "$public_html" ];  then
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

echo "<FilesMatch \".(py|exe|php)\$\">"
echo " Order allow,den"y
echo " Deny from all"
echo "</FilesMatch>"



cd $public_html
find . -type f  -name "*.php"  -exec chown root:$user   {} \;
find . -type d   -exec chmod guo-w   {} \;
chmod guo-w  .


echo "Adding code to plugins folder 's .htaccess?"
read x
vim "$public_html/wp-content/plugins/.htaccess"




echo "Done"
exit 0
#plugindir="$public_html"
