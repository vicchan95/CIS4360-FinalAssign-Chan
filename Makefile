default: start

service:=ms-event-store

.PHONY: start
start: 
	# implement

.PHONY: stop
stop: 
	# implement

.PHONY: restart
restart:
	# implement

.PHONY: ps
ps: 
	# imlement

.PHONY: build
build:
	#implement

.PHONY: clean
clean: 
	#implement

.PHONY: logs
logs:
	# implement

.PHONY: logs-db
logs-db:
	# implement

.PHONY: logs-app
logs-app:
	# implement

# requires: brew install awscli
.PHONY: list-tables
list-tables:
	aws dynamodb list-tables --endpoint-url http://localhost:8248

# requires: Node installation && npm install -g redoc-cli
.PHONY: docs
docs:
	redoc-cli bundle -ssr -o docs/index.html specs/api.yml
# Also requires spectacle and docs are served at: http://localhost:4400/
.PHONY: docs-serve
docs-serve:
	redoc-cli serve -w -ssr -p 9999 specs/api.yml

.PHONY: install-package-in-container
install-package-in-container:
	docker-compose exec ${service} pip install -S ${package}
	docker-compose exec ${service} pip freeze > requirements.txt

.PHONY: add
add: install-package-in-container build	

.PHONY: deps
deps:
	docker-compose exec ${service} pip install -r requirements.txt	