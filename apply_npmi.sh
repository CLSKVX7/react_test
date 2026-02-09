# stop and remove containers
docker compose down
docker compose down -v
# remove node_modules (for intelliSense)
rm -rf node_modules
# re-install node_modules (for intelliSense)
npm i
# re-build and start containers
docker compose up --build