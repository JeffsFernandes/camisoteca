docker-compose build
docker-compose run --service-ports web bash
    bundle install --path vendor/bundle
    rake db:create