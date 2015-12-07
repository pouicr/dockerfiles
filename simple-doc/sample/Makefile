IMG := simpledoc
TAG := latest
IP := `docker inspect --format '{{ .NetworkSettings.IPAddress }}' docserve`

build:
	@echo "Build the doc"
	docker run --rm -v "$(PWD):/work" $(IMG):$(TAG) build

checklink:
	@echo "Check for broken links (feat linkchecker)"
	docker run -d -v "$(PWD):/work" --name docserve $(IMG):$(TAG) serve
	-docker run -it -v "$(PWD):/work" --rm --entrypoint /usr/bin/linkchecker $(IMG):$(TAG) --timeout=300 -Ftext|link-error -q http://$(IP):8000
	docker stop docserve && docker rm docserve

serve:
	@echo "Serve the doc"
	docker run -it -v "$(PWD):/work" -p 8000:8000 --rm --name mkdocs $(IMG):$(TAG) serve

export:
	@echo "Export the doc"
	docker run -it -v "$(PWD):/work" --rm --entrypoint /bin/bash $(IMG):$(TAG) /export.sh
