################################################################################################################################################################################
--default: dev-start
--targets:
	@echo "Available targets:" && grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'
################################################################################################################################################################################

show-help: --targets ## shows this help

prepare-repo: ## prepares dev session (install packages, etc.)
	npm i

dev-start:	## short for "npm run dev:start"
	npm run dev:start

dev-start-web: ## start the web version
	npx http-server src/web_app/

app-dir:	## short for "npm run app:dir"
	npm run app:dir

app-dist:	## short for "npm run app:dist"
	npm run app:dist
