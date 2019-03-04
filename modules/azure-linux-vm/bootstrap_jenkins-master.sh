#Install dependencies for Jenkins
sudo apt-get update
sudo apt-get install -y default-jre
                  
#Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

#Configure firewall for Jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw --force enable

#Install Ansible. Ansible has a dependency on Python
sudo apt-get update
sudo apt-get -qq install -y python
sudo apt-get install -y ansible