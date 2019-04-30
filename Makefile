# requires: Node installation && npm install -g redoc-cli
.PHONY: docs
docs:
	- docker build -t cis4360-openapispec .
	- docker run -v $$PWD/docs:/app/docs cis4360-openapispec
# Also requires spectacle and docs are served at: http://localhost:4400/
.PHONY: docs-serve
docs-serve:
	redoc-cli serve -w -ssr -p 9999 specs/api.yml