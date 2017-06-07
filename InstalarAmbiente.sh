cd ;

echo "***************************" ;
echo **Instalando dependências** ;
echo "***************************" ;

sudo apt-get install curl openssh-server ca-certificates postfix build-essential apt-transport-https software-properties-common git -y ;


echo "****************************" ;
echo **Adicionando repositórios** ;
echo "****************************" ;

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - ;

curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash ;

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add - ;

echo 'deb https://pkg.jenkins.io/debian binary/' | sudo tee --append /etc/apt/sources.list

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ;

sudo apt-key fingerprint 0EBFCD88 ;

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" ;


sudo apt-get update ;


echo "****************************" ;
echo **Instalando pacotes** ;
echo "****************************" ;

sudo apt-get install gitlab-ce=8.16.6-ce.0 nodejs docker-ce jenkins -y ;

