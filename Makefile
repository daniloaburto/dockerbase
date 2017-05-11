VERSION=0.1
DOCKER_CMD=docker
RAILS_CONTEXT=passenger-rails-0.9.20
RAILS_DOCKERFILE=$(RAILS_CONTEXT)/Dockerfile

# Images
all: rails

rails:
	$(DOCKER_CMD) build -f $(RAILS_DOCKERFILE) $(RAILS_CONTEXT)
