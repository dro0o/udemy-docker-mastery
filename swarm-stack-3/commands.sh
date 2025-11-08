# For local dev
# this will take the docker-compose.yml and override with the '.override.yml', file
docker compose up -d

# take it down
docker compose down

# CI solution commands
# make sure docker compose is integrated there
# order of yml compose files matters, base is first always
docker compose -f docker-compose.yml -f docker-compose.test.yml up -d

# Prod command
# 'config' creates one output from all configs files
docker compose -f docker-compose.yml -f docker-compose.prod.yml config
docker compose -f docker-compose.yml -f docker-compose.prod.yml config < output.yml
# output.yml could be used in production
# make sure to inspect output for accuracy
# compose 'extends' option, doesn't yet work in Stacks (double check, could work now)
