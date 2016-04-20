COMPONENT=blog
NGINX=custom-nginx
JEKYLL_PATH=jekyll
NGINX_PATH=nginx

build-blog:
	@echo "Building blog.."
	docker build \
		--tag $(COMPONENT)":latest" \
		$(JEKYLL_PATH)
	@echo "Built "$(COMPONENT)

build-nginx:
	@echo "Building nginx.."
	docker build \
		--tag $(NGINX)":latest" \
		$(NGINX_PATH)
	@echo "Built "$(NGINX)

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
		$(NGINX)

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
