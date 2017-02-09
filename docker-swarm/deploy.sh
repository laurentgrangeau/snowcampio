docker-compose pull
docker-compose bundle -o snowcampio
docker deploy --file snowcampio.dab sockshop

# Open tunnel 30000