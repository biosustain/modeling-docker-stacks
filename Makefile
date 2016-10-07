OWNER:=biosustain

ALL_STACKS:=cameo cameo-solvers

ALL_IMAGES:=$(ALL_STACKS)

GIT_MASTER_HEAD_SHA:=$(shell git rev-parse --short=12 --verify HEAD)

build/%:
	docker build $(DARGS) --build-arg GITHUB_TOKEN=$(GITHUB_TOKEN) --rm -t $(OWNER)/$(notdir $@):latest ./$(notdir $@)

tag/%:
	docker tag $(OWNER)/$(notdir $@):latest $(OWNER)/$(notdir $@):$(GIT_MASTER_HEAD_SHA)

push/%:
	docker push $(OWNER)/$(notdir $@):latest
	docker push $(OWNER)/$(notdir $@):$(GIT_MASTER_HEAD_SHA)

build-all: $(patsubst %,build/%, $(ALL_IMAGES))

tag-all: $(patsubst %,tag/%, $(ALL_IMAGES))

push-all: $(patsubst %,push/%, $(ALL_IMAGES))

release-all: build-all tag-all push-all