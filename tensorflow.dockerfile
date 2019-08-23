ARG BASE_IMAGE=cemizm/cuda-scipy

FROM $BASE_IMAGE

RUN pip install \
    tensorflow-gpu \
    keras  

ENV TF_FORCE_GPU_ALLOW_GROWTH true
