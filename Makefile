setup:
	make build
	make dbcreate
	make migrate
	make up
	make open
build:
	docker-compose build
bundle:
	docker-compose run --rm app bin/bundle install
dbcreate:
	docker-compose run --rm app bin/rails db:create
migrate:
	docker-compose run --rm app bin/rails db:migrate
console:
	docker-compose run --rm app bin/rails c
rspec:
	docker-compose run --rm app bin/bundle exec rspec -fd
logs:
	docker-compose logs app
down:
	docker-compose down
up:
	docker-compose up -d
open:
	open http://localhost:3000/
