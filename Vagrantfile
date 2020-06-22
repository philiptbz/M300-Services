Vagrant.configure("2") do |config|
  #Passwörtervariabeln 
  proxy_conf = "proxym300services.conf"
  mysql_password = "rootmysql"

  # Box OS Setting / Distribution wird festgelegt. 
  config.vm.box = "ubuntu/xenial64"

  # Machine Settings / Hostname der VM wird definiert
  config.vm.hostname = "philip"

  # Network Settings / Ports über die die VM erreichbar ist wird definiert
  config.vm.network "forwarded_port", guest:80, host:8080, auto_correct: true

  # Folder Sync / =
  config.vm.synced_folder ".", "/var/www/html/", create: true

  # Provider Settings / Konfiguration der Virtualisierungssoftware
  config.vm.provider "virtualbox" do |vb|
      vb.memory = "512" 
  end

  # Shell Commands / Hochladen und Ausführen eines Skripts auf dem Gastcomputer.
  config.vm.provision "shell", inline: <<-SHELL

  # Die letzten Updates erhalten
  sudo apt-get update

  # Installieren der Dienste, Webserver, Firewall und Proxy
  sudo apt-get install apache2 -y
  sudo apt-get install ufw -y
  sudo apt-get install libxml2-dev -y

  # Vorkonfiguration für die MYSQL-Installation und deren Installation
  # Konfiguration des Root Passwords
  sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password #{mysql_password}"
  sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password #{mysql_password}"
  sudo apt-get -y install mysql-server

  # Firewall Konfiguration / Rules
  #schliessen aller Ports
  sudo ufw deny out to any
  #ssh port öffnen
  sudo ufw allow from any to any port 22
  #http & https port öffnen
  sudo ufw allow from any to any port 80
  sudo ufw allow from any to any port 443
  sudo ufw enable 

  # Proxy-Module aktivieren
  sudo a2enmod proxy
  sudo a2enmod proxy_html
  sudo a2enmod proxy_http

  # Reverse-Proxy konfiguration
  # erreichbarer Port
  echo "echo '<VirtualHost *:80>' >> /etc/apache2/sites-available/#{proxy_conf}" | sudo bash
  # Servername wird definiert
  echo "echo '	ServerName m300-mysql' >> /etc/apache2/sites-available/#{proxy_conf}" | sudo bash
  # Serveralias wird definiert
  echo "echo '	ServerAlias www.m300-mysql '>> /etc/apache2/sites-available/#{proxy_conf}" | sudo bash
  # schliessen der Konfig
  echo "echo '</VirtualHost>' >> /etc/apache2/sites-available/#{proxy_conf}" | sudo bash
  # ?
  sudo a2ensite /etc/apache2/sites-available/#{proxy_conf}

  #Gruppenordner erstellen
  mkdir -p /grp/datenbank
  mkdir -p /grp/apache

  #Benutzer hinzufügen
  useradd dbroot -p password
  useradd webadmin -p password

  #Gruppe Hinzufügen
  groupadd datenbank
  groupadd apache

  #Benutzer der Gruppe hinzufügen
  usermod -aG datenbank dbroot
  usermod -aG apache webadmin

  #Gruppenorder Zugriff erstellen
  chmod 770 /grp/datenbank -R
  chown root:datenbank /grp/datenbank/ -R
  chmod 770 /grp/apache -R
  chown root:apache /grp/apache/ -R

  # LDAP-Module aktivieren
  sudo apt-get -y install debconf-utils apache2 nmap
  sudo a2enmod cgi  
  sudo a2enmod ldap 
  sudo a2enmod authnz_ldap

  # LDAP Konfigurieren
  sudo apt-get -y install debconf-utils apache2 nmap
  sudo a2enmod cgi  
  sudo a2enmod ldap 
  sudo a2enmod authnz_ldap
  sudo mkdir -p  /var/www/html/data && sudo chown www-data:www-data /var/www/html/data 
  export DEBIAN_FRONTEND=noninteractive
  # Setzen der Passwörter
  sudo debconf-set-selections <<<'slapd slapd/internal/generated_adminpw password admin'
  sudo debconf-set-selections <<<'slapd slapd/password2 password admin'
  sudo debconf-set-selections <<<'slapd slapd/internal/adminpw password admin'
  sudo debconf-set-selections <<<'slapd slapd/password1 password admin'
  sudo apt-get install -y slapd ldap-utils phpldapadmin
  sudo sed -i -e's/dc=example,dc=com/dc=nodomain/' /etc/phpldapadmin/config.php

  # HTTPS freischalten
  # Activate Default Config
  sudo a2ensite default-ssl.conf
 
  # Aktivieren des SSL Modul in Apache2
  sudo a2enmod ssl
  
  # Deaktivieren von HTTP
  sudo a2dissite 000-default.conf
 
  # Deactivate HTTP in ports config -> /etc/apache2/ports.conf
  sudo nano /etc/apache2/ports.conf
    
  # Restart the Service
  sudo service apache2 restart

SHELL

end