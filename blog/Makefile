COMPONENT=blog
DEPLOYMENT_PATH=./

build:
	@echo "Building blog.."
	docker build \
		-t $(COMPONENT)":latest" \
		$(DEPLOYMENT_PATH)
	@echo "Built "$(COMPONENT)

run:
	@echo "Running blog.."
	docker run \
		-d \
		--name $(COMPONENT) \
		-p 80:80 \
		$(COMPONENT)":latest"

clean:
	@echo "Cleaning blog.."
	docker stop $(COMPONENT)
	docker rm $(COMPONENT)
	docker rmi $(COMPONENT)
	@echo "Done."
