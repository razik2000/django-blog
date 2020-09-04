help: ## provide information about file command
	grep "##" ./Makefile
dc-build: ## build project, environment and run demon server
	docker-compose up -d --build
dc-restart: ## restart containers
	docker-compose restart
dc-stop: ## stop all projects containers
	docker-compose stop
dc-makemigrations: ## make migrations in project
	docker-compose run web ./manage.py makemigrations
dc-migrate: ## migrate
	docker-compose run web ./manage.py migrate
dc-createsuperuser: ## created project super user(it need when you use django admin panel)
	docker-compose run web ./manage.py createsuperuser
i-lists: ## provide image list
	docker images
