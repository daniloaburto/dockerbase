VERSION=0.1
DOCKER_CMD=docker
RAILS_CONTEXT=ruby-on-rails
RAILS_DOCKERFILE=$(RAILS_CONTEXT)/Dockerfile

# Images
all: rails

rails:
	$(DOCKER_CMD) build -f $(RAILS_DOCKERFILE) $(RAILS_CONTEXT)
