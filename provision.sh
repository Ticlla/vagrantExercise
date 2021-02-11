echo '******************* Provisioning Files/config **************************'
	echo '**********   Bienvenido a mi servidor **************'>/etc/motd
	echo 'miaplicacion.db.ip=192.168.10.12'>>/etc/miaplicacion.conf
	echo 'miaplicacion.db.usuario=juancho'>>/etc/miaplicacion.conf
	echo 'miaplicacion.db.puerto=5432'>>/etc/miaplicacion.conf

	
echo '******************* Provisioning new user **************************'

sudo mkdir /home/uagrm
sudo useradd -u 21354319 -g users -d /home/uagrm -p 'dsfdsajlfjl;323482304$%#%^%' -m uagrm


echo '******************* Provisioning ntp configuration **************************'

	echo 'server 0.south-america.pool.ntp.org'>>/etc/ntp.conf
	echo 'server 1.south-america.pool.ntp.org'>>/etc/ntp.conf
	echo 'server 2.south-america.pool.ntp.org'>>/etc/ntp.conf
	echo 'server 3.south-america.pool.ntp.org'>>/etc/ntp.conf
	echo 'logfile /var/log/ntp.log'>>/etc/ntp.conf

	
echo '******************* Provisioning Start ntp  **************************'


	sudo systemctl start ntpd
