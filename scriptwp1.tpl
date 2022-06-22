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
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport ${efsid}.amazonaws.com:/ /srv/www/
echo "3"
    sudo sed -i "s/hostname/'${LB_Address}'/g" /etc/apache2/sites-available/wordpress.conf
if [[ ! -f "/srv/www/wordpress/wp-config.php" ]]; then
    echo "ningun file adjunto"
    sudo chown www-data: /srv/www
    sudo -u www-data cp -R /srv/www1/wordpress /srv/www/.
    sed -i "s/'username_here'/wordpress/g" /srv/www/wordpress/wp-config.php
    sed -i "s/'password_here'/AdminCeci1/g" /srv/www/wordpress/wp-config.php
    sed -i "s/'database_name_here'/wordpress/g" /srv/www/wordpress/wp-config.php
    sed -i "s/'localhost'/'${dbhost}':3306/g" /srv/www/wordpress/wp-config.php
    cat /etc/apache2/sites-available/wordpress.conf
    echo "============================="
    cat /srv/www/wordpress/wp-config.php
fi
echo "5"
sudo a2ensite wordpress
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo service apache2 reload
sudo systemctl reload apache2