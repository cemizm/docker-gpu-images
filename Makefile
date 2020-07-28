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

.PHONY: pytorch
pytorch: scipy
	docker build -t $(image):pytorch --build-arg BASE_IMAGE=$(image):scipy -f pytorch.dockerfile .

.PHONY: jupyter-tensorflow
jupyter-tensorflow: tensorflow
	docker build -t $(image):jupyter-tensorflow --build-arg BASE_IMAGE=$(image):tensorflow -f jupyter-tensorflow.dockerfile .

PHONY: all
all: base scipy tensorflow pytorch jupyter-tensorflow
