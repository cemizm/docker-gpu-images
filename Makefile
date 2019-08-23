image = cemizm/cuda
tag = 0.1

.PHONY: base
base:
	docker build -t $(image)-base:$(tag) -f base.dockerfile .

.PHONY: scipy
scipy: base
	docker build -t $(image)-scipy:$(tag) --build-arg BASE_IMAGE=$(image)-base:$(tag) -f scipy.dockerfile .

.PHONY: tensorflow
tensorflow: scipy
	docker build -t $(image)-tensorflow:$(tag) --build-arg BASE_IMAGE=$(image)-scipy:$(tag) -f tensorflow.dockerfile .

PHONY: publish
publish: base scipy tensorflow
	docker tag $(image)-base:$(tag) $(image)-base:latest
	docker push $(image)-base:$(tag)
	docker push $(image)-base:latest

	docker tag $(image)-scipy:$(tag) $(image)-scipy:latest
	docker push $(image)-scipy:$(tag)
	docker push $(image)-scipy:latest

	docker tag $(image)-tensorflow:$(tag) $(image)-tensorflow:latest
	docker push $(image)-tensorflow:$(tag)
	docker push $(image)-tensorflow:latest