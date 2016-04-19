echo -n "Quel est l'URL de votre projet ? "
read URL
echo 127.0.0.1       $URL >> C:/Windows/System32/drivers/etc/hosts
echo -n "Quel est le nom du projet ? "
read NAME
mkdir $NAME
cd $NAME
echo "<VirtualHost *:80>" > httpd-vhosts.conf
echo 'DocumentRoot "c:/wamp64/www/'$NAME'/public"' >> httpd-vhosts.conf
echo "ServerName $URL" >> httpd-vhosts.conf
echo 'ErrorLog "c:/wamp64/www/logs/error.log"' >> httpd-vhosts.conf
echo 'CustomLog "c:/wamp64/www/logs/error.log" common' >> httpd-vhosts.conf
echo "</VirtualHost>" >> httpd-vhosts.conf