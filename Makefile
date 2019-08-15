.PHONY: base
base:
	docker build -t cemizm/docker-gpu:base -f base.dockerfile .

.PHONY: tensorflow
tensorflow: base
	docker build -t cemizm/docker-gpu:tensorflow -f tf.dockerfile .