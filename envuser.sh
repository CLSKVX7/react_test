cat .env_base > .env
echo "UID=$(id -u)" >> .env
echo "GID=$(id -g)" >> .env
echo "USERNAME=$(whoami)" >> .env
echo "GROUPNAME=$(id -gn)" >> .env