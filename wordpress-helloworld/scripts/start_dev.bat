docker compose -f docker-compose.dev.yml up -d --build
docker compose -f docker-compose.dev.yml ps -a

docker compose -f docker-compose.dev.yml logs -f
