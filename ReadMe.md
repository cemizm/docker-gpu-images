# Docker GPU Images

#### Quickstart

```
docker run -it --rm cemizm/sci-gpu:scipy
```
```
docker run -it --rm cemizm/sci-gpu:tensorflow
```



## cemizm/base

https://github.com/cemizm/docker-gpu-images/blob/master/base.dockerfile

#### Requirements

- [bzip2](http://www.bzip.org/), g++, [git](https://git-scm.com/), [graphviz](https://www.graphviz.org/), libgl1-mesa-glx, libhdf5-dev, openmpi-bin, [wget](https://www.gnu.org/software/wget/)



## cemizm/scipy

https://github.com/cemizm/docker-gpu-images/blob/master/scipy.dockerfile


#### Requirements

- Everything in cemizm/base
- [pandas](https://pandas.pydata.org/), [numexpr](https://github.com/pydata/numexpr), [matplotlib](https://matplotlib.org/), [scipy](https://www.scipy.org/), [seaborn](https://seaborn.pydata.org/), [scikit-learn](http://scikit-learn.org/stable/), [scikit-image](http://scikit-image.org/), [sympy](http://www.sympy.org/en/index.html), [cython](http://cython.org/), [patsy](https://patsy.readthedocs.io/en/latest/), [statsmodels](http://www.statsmodels.org/stable/index.html), [cloudpickle](https://github.com/cloudpipe/cloudpickle), [dill](https://pypi.python.org/pypi/dill), [numba](https://numba.pydata.org/), [bokeh](https://bokeh.pydata.org/en/latest/), [sqlalchemy](https://www.sqlalchemy.org/), [h5py](http://www.h5py.org/), [vincent](http://vincent.readthedocs.io/en/latest/), [beautifulsoup](https://www.crummy.com/software/BeautifulSoup/), [protobuf](https://developers.google.com/protocol-buffers/docs/pythontutorial), [xlrd](http://www.python-excel.org/) , [numpy](https://www.numpy.org/), [dask](https://dask.org/), [ipywidgets](https://ipywidgets.readthedocs.io/en/latest/)



## cemizm/tensorflow

https://github.com/cemizm/docker-gpu-images/blob/master/tensorflow.dockerfile

#### Requirements

- Everything  in cemizm/scipy
- [tensorflow-gpu](https://www.tensorflow.org/install/gpu), [keras](https://keras.io/)