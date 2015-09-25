build:
	@echo "Build the doc"
	docker run -v "$(PWD):/work" pouicr/simpledoc:1.0 build

serve:
	@echo "Serve the doc"
	docker run -it -v "$(PWD):/work" -p 8000:8000 --rm --name mkdocs pouicr/simpledoc:1.0 serve
