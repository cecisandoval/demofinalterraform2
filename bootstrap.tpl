#!/bin/bash -xe
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport $efsid:/ /srv/www/
sudo chown www-data: /srv/www
sudo sed -i "s/hostname/\'$LB_DNS\'/g" /etc/apache2/sites-available/wordpress.conf
sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo service apache2 reload
sed -i "s/'username_here'/\'$DB_User\'/g" /srv/www/wordpress/wp-config.php
sed -i "s/'password_here'/\'$DB_Password\'/g" /srv/www/wordpress/wp-config.php
sed -i "s/'database_name_here'/\'$DB_NAME\'/g" /srv/www/wordpress/wp-config.php
sed -i "s/'localhost'/\'$dbhost\':3306/g" /srv/www/wordpress/wp-config.php
