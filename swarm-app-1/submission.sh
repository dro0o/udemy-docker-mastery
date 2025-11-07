# Swarm Assignment 1- within a docker swarm

# Create networks needed
# docker network create -d overlay backend
# docker network create -d overlay frontend

# Vote service:
# docker service create --name vote -p 80:80 --network frontend --replicas 2 bretfisher/examplevotingapp_vote

# Redis service:
# docker service create --name redis --network frontend redis:3.2

# Worker service:
# docker service create --name worker --network frontend --network backend bretfisher/examplevotingapp_worker

# db service:
# docker service create --name db --network backend postgres:9.4 --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres:9.4

# result service:
# docker service create --name result --network backend -p 5001:80 bretfisher/examplevotingapp_result

# debugging
# docker service logs <service_name>
# cat /etc/docker/daemon.json (within a node in the swarm)