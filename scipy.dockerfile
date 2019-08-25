ARG BASE_IMAGE=cemizm/sci-gpu:base

FROM $BASE_IMAGE

RUN apt-get update && apt-get install -y --no-install-recommends \
      python3 \
      python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s $(which python3) /usr/local/bin/python 
RUN ln -s $(which pip3) /usr/local/bin/pip 

RUN pip --no-cache-dir install --upgrade \
    pip \
    setuptools

ENV PYTHONPATH='/src/:$PYTHONPATH'
ENV PYTHONUNBUFFERED 1

RUN pip install \
    'numpy >= 1.13.3, <= 1.14.5' \
    'beautifulsoup4>=4.8.0,<4.9.0' \
    'bokeh>=1.3.0,<1.4.0' \
    'cloudpickle>=1.2.0,<1.3.0' \
    'cython==0.29' \
    'dask>=2.2.0,<2.3.0' \
    'dill>=0.3,<0.4' \
    'h5py>=2.9,<3.0' \
    'ipywidgets>=7.5.0,<7.6.0' \
    'matplotlib>=3.1.0,<3.2.0' \
    'numba>=0.45,<0.46' \
    'numexpr>=2.6,<2.7' \
    'pandas>=0.25,<0.26' \
    'patsy>=0.5,<0.6' \
    'protobuf>=3.9.0,<4.0.0' \
    'scikit-image>=0.15,<0.16' \
    'scikit-learn>=0.21,<0.22' \
    'scipy>=1.3,<1.4' \
    'seaborn>=0.9' \
    'sqlalchemy>=1.3.0,<1.4.0' \
    'statsmodels>=0.10,<0.11' \
    'sympy>=1.4,<1.5' \
    'vincent>=0.4.0,<0.5.0' \
    'xlrd'