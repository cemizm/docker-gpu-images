image = cemizm/sci-gpu

.PHONY: base
base:
	docker build -t $(image):base -f base.dockerfile .

.PHONY: scipy
scipy: base
	docker build -t $(image):scipy --build-arg BASE_IMAGE=$(image):base -f scipy.dockerfile .

.PHONY: tensorflow
tensorflow: scipy
	docker build -t $(image):tensorflow --build-arg BASE_IMAGE=$(image):scipy -f tensorflow.dockerfile .

PHONY: publish
publish: base scipy tensorflow
	docker push $(image):base
	docker push $(image):scipy
	docker push $(image):tensorflow