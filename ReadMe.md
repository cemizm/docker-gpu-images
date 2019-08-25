# Data Science GPU Images
Many scientific tools and frameworks for machine learning support the use of GPUs to increase performance for certain operations and thus reduce waiting time. Thanks to the [Nvidia Docker plugin](https://github.com/NVIDIA/nvidia-docker), Docker containers can also benefit from this. But besides the installed Docker plugin, it is also necessary that the images contain the [Cuda runtime environment](https://docs.nvidia.com/cuda/index.html). This can either be installed later into the desired image or the image can be based on the [Cuda image](https://hub.docker.com/r/nvidia/cuda/) provided by Nvidia. The aim of this repository is to create various images for the most common scientific tools and frameworks based on the Nvidia Cuda Image. These can then be used as they are or as a basis for your own images. 

## Quickstart
To use the images provided here, you can either run them in the interactive mode or use them as a base image for your images. 

### Interactive mode
```
docker run -it --rm cemizm/sci-gpu:tensorflow /bin/bash
```

### Image
```
FROM cemizm/sci-gpu:tensorflow

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD python train.py
```

## Base Image
The base image is the base for all images in this repository. Its based on the `nvidia/cuda` image and installs all common system packages for the following images. 

[Dockerfile](https://github.com/cemizm/docker-gpu-images/blob/master/base.dockerfile)

```
docker pull cemizm/sci-gpu:base
```

### System packages

- [bzip2](http://www.bzip.org/), g++, [git](https://git-scm.com/), [graphviz](https://www.graphviz.org/), libgl1-mesa-glx, libhdf5-dev, openmpi-bin, [wget](https://www.gnu.org/software/wget/), python3, pip3



## Scipy Image
Extends the Base Image with python and pip environment and installs a bunch of pip packages for data science.

[Dockerfile](https://github.com/cemizm/docker-gpu-images/blob/master/scipy.dockerfile)

```
docker pull cemizm/sci-gpu:scipy
```

### Packages

- Everything from base image
- python3 and pip3
- [pandas](https://pandas.pydata.org/), [numexpr](https://github.com/pydata/numexpr), [matplotlib](https://matplotlib.org/), [scipy](https://www.scipy.org/), [seaborn](https://seaborn.pydata.org/), [scikit-learn](http://scikit-learn.org/stable/), [scikit-image](http://scikit-image.org/), [sympy](http://www.sympy.org/en/index.html), [cython](http://cython.org/), [patsy](https://patsy.readthedocs.io/en/latest/), [statsmodels](http://www.statsmodels.org/stable/index.html), [cloudpickle](https://github.com/cloudpipe/cloudpickle), [dill](https://pypi.python.org/pypi/dill), [numba](https://numba.pydata.org/), [bokeh](https://bokeh.pydata.org/en/latest/), [sqlalchemy](https://www.sqlalchemy.org/), [h5py](http://www.h5py.org/), [vincent](http://vincent.readthedocs.io/en/latest/), [beautifulsoup](https://www.crummy.com/software/BeautifulSoup/), [protobuf](https://developers.google.com/protocol-buffers/docs/pythontutorial), [xlrd](http://www.python-excel.org/) , [numpy](https://www.numpy.org/), [dask](https://dask.org/), [ipywidgets](https://ipywidgets.readthedocs.io/en/latest/)


## Tensorflow
Adds Keras and Tensorflow GPU Backend to the image.

[Dockerfile](https://github.com/cemizm/docker-gpu-images/blob/master/tensorflow.dockerfile)

```
docker pull cemizm/sci-gpu:tensorflow
```


### Packages

- Everything from scipy image
- [tensorflow-gpu](https://www.tensorflow.org/install/gpu), [keras](https://keras.io/)

## PyTorch
Adds pytorch with gpu support to the image.

[Dockerfile](https://github.com/cemizm/docker-gpu-images/blob/master/pytorch.dockerfile)

```
docker pull cemizm/sci-gpu:pytorch
```

### Packages

- Everything from scipy image
- [pytorch](https://pytorch.org/)