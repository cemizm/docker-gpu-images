FROM cemizm/docker-gpu:base

RUN pip install \
    tensorflow-gpu \
    Pillow \
    h5py \
    Keras \
    matplotlib \
    mock \
    numpy \
    scipy \
    six \
    sklearn \
    pandas \
    future \
    portpicker

ENV PYTHONPATH='/src/:$PYTHONPATH'
ENV TF_FORCE_GPU_ALLOW_GROWTH true

WORKDIR /src

COPY test.py /src/test.py
