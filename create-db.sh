set -o allexport
source ./.env
set +o allexport

docker run --name learn-psql14 \
  -e POSTGRES_DB=${POSTGRES_DB} \
  -e POSTGRES_USER=${POSTGRES_USER} \
  -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
  -e PGDATA=/var/lib/postgresql/data/pgdata \
  -v ./data:/var/lib/postgresql/data \
  -p 5432:${POSTGRES_PORT} \
  --detach \
  postgres:14.1-alpine