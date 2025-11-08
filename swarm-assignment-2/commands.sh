# create mariadb password within swarm
docker swarm init
echo "mypass" | docker secret create mariadb-pw -

# init swarm stack
docker stack deploy -c docker-compose.yml drupal
docker stack ps drupal