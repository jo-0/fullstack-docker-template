docker-compose.override.yml:
	ln -s compose.override.LOCAL_COPY.yml compose.override.yml

docker-local-initial-setup: docker-local-build docker-local-setup
	@echo "\nSetup complete!\n\nVisit http://localhost:80\n"

docker-local-build: docker-compose.override.yml
	docker compose build

docker-local-setup:
	docker compose up

lint-js:
	docker compose run --rm --no-deps frontend npm run lint
	docker compose run --rm --no-deps frontend npm run format

lint-python:
	docker compose run --rm --no-deps backend black .
	docker compose run --rm --no-deps backend flake8 .
