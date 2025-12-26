## Actualizacion del sistema
sudo apt update && sudo apt full-upgrade -y

## Verificacion si Docker esta instalado y en caso de no estarlo, instalarlo
if ! command -v docker &> /dev/null
then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    sudo usermod -aG docker $USER
    newgrp docker
fi

## Verificacion si Docker Compose esta instalado y en caso de no estarlo, instalarlo
if ! command -v docker-compose &> /dev/null
then
    sudo apt install -y docker-compose
fi

## Instalacion de Dokploy:
curl -sSL https://dokploy.com/install.sh | sh