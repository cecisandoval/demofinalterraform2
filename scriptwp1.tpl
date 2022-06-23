#!/bin/bash -xe
EFSMOUNT="/srv/www/"
if grep -qs "$EFSMOUNT" /proc/mounts; then
    echo "1"
else
    echo "It's not mounted."
    if [[ ! -d "/srv/www/" ]]; then
        sudo mkdir -p /srv/www
        echo "2"
    fi
fi
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport ${efsid}.efs.${regionid}.amazonaws.com:/ /srv/www/
echo "3"
if [[ ! -f "/srv/www/wordpress/wp-config.php" ]]; then
    echo "ningun file adjunto"
    sudo chown www-data: /srv/www
    sudo -u www-data cp -R /srv/www1/wordpress /srv/www/.
fi
sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
if [[ ! -f "/srv/www/wordpress/wp-config.php" ]]; then
    sudo -u www-data cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php
    sed -i "s/'username_here'/wordpress/g" /srv/www/wordpress/wp-config.php
    sed -i "s/'password_here'/AdminCeci1/g" /srv/www/wordpress/wp-config.php
    sed -i "s/'database_name_here'/wordpress/g" /srv/www/wordpress/wp-config.php
    sed -i "s/'localhost'/${dbhost}:3306/g" /srv/www/wordpress/wp-config.php
    echo "============================="
if
sudo service apache2 reload
cat /srv/www/wordpress/wp-config.php
echo "============todo=bien=final================="