COMPONENT=blog
JEKYLL_PATH=jekyll

build:
	@echo "Building blog.."
	docker build \
		--tag $(COMPONENT)":latest" \
		$(JEKYLL_PATH)
	@echo "Built "$(COMPONENT)

run-jekyll:
	@echo "Running blog.."
	docker rm $(COMPONENT)
	docker run \
		--interactive \
		--name $(COMPONENT) \
		$(COMPONENT)":latest"

restart-nginx: stop-nginx
	docker run \
		--detach \
		--publish 80:80 \
		--name nginx \
		--volumes-from $(COMPONENT) \
		nginx

run-nginx:
	docker run \
		--detach \
		--publish 80:80 \
		--name nginx \
		--volumes-from $(COMPONENT) \
		nginx

stop-nginx:
	docker stop nginx
	docker rm nginx

clean-jekyll:
	@echo "Cleaning jekyll.."
	docker rm $(COMPONENT) \
  docker rmi $(COMPONENT)
	@echo "Done."

clean:
	@echo "Cleaning blog.."
	docker stop $(docker ps -a -q) \
  docker rm $(docker ps -a -q) \
  docker rmi $(docker images -a -q)
	@echo "Done."
