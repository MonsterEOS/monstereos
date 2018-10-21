echo "Starting docker containers"
docker-compose up -d mongo postgres
sleep 5s

docker-compose up -d

cd services/frontend
yarn start

cd ../..