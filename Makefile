APPLICATION_NAME := a10-exporter

sandbox:
	docker compose -f docker-compose.yml up -d
	docker exec -it prometheus-exporter-acos bash

rebuild: 
	docker compose -f docker-compose.yml up -d --build