docker-compose.override.yml:
	ln -s compose.override.LOCAL_COPY.yml compose.override.yml

docker-local-initial-setup: docker-local-build docker-local-setup
	@echo "\nSetup complete!\n\nVisit http://localhost:80\n"

docker-local-build: docker-compose.override.yml
	docker compose build

docker-local-setup:
	docker compose up
