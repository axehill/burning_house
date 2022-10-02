setup:
	docker-compose build
	make dbcreate
	make migrate
bundle:
	docker-compose run --rm app bin/bundle
dbcreate:
	docker-compose run --rm app bin/rails db:create
migrate:
	docker-compose run --rm app bin/rails db:migrate
console:
	docker-compose run --rm app bin/rails c
logs:
	docker-compose logs app
down:
	docker-compose down
up:
	docker-compose up -d
open:
	open http://localhost:3000/
