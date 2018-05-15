# Copyright (C) 2016-2018 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

APP=zeiot

NAMESPACE=$(APP)
IMAGE=rpi-prometheus

REGISTRY_IMAGE ?= $(NAMESPACE)/$(IMAGE)

NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

DOCKER = docker

ifneq ($(version),)
	VERSION := $(shell grep ' VERSION' ${version}/Dockerfile|awk -F" " '{ print $$3 }')
endif

arch ?= arm

all: help

help:
	@echo -e "$(OK_COLOR)==== $(APP) / $(IMAGE) ====$(NO_COLOR)"
	@echo -e "$(WARN_COLOR)- build version=xx   : Make the Docker image$(NO_COLOR)"
	@echo -e "$(WARN_COLOR)- publish version=xx : Publish the image$(NO_COLOR)"
	@echo -e "optional argument: arch=$(arch)"
	@echo -e "Registry: $(REGISTRY_IMAGE)"

.PHONY: build
build:
	@echo -e "$(OK_COLOR)[$(APP)] build $(REGISTRY_IMAGE):v$(VERSION)-$(arch)$(NO_COLOR)"
	@$(DOCKER) build -t $(REGISTRY_IMAGE):v${VERSION}-$(arch) $(version) -f $(version)/Dockerfile.$(arch)

.PHONY: run
run:
	@echo -e "$(OK_COLOR)[$(APP)] run $(REGISTRY_IMAGE):v$(VERSION)-$(arch)$(NO_COLOR)"
	@$(DOCKER) run --rm=true -p 9090:9090 $(REGISTRY_IMAGE):v$(VERSION)-$(arch)

.PHONY: login
login:
	@$(DOCKER) login

.PHONY: publish-arm
publish:
	@echo -e "$(OK_COLOR)[$(APP)] Publish $(REGISTRY_IMAGE):v$(VERSION)-$(arch)$(NO_COLOR)"
	@$(DOCKER) push $(REGISTRY_IMAGE):v$(VERSION)-$(arch)
