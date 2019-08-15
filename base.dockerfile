FROM nvidia/cuda:10.0-cudnn7-devel as base

ARG PYTHON=python3
ARG PIP=pip3

# Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
      bzip2 \
      g++ \
      git \
      graphviz \
      libgl1-mesa-glx \
      libhdf5-dev \
      openmpi-bin \
      wget \
      ${PYTHON} \
      ${PYTHON}-pip && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s $(which ${PYTHON}) /usr/local/bin/python 
RUN ln -s $(which ${PIP}) /usr/local/bin/pip 

RUN pip --no-cache-dir install --upgrade \
    pip \
    setuptools