# BRKCOL-2175 at Cisco Live Barcelona 2020

This repository contains all reference material for above session

## Folder: Notebook
This folder contains the Jupyter notebooks used for the demos.

## Live Jupyter demo environment

To get a live environment (Jupyter server with the demo notebooks) you can run the following command from the main directory:

```
docker build -t brkcol2175clemea2020 .
```

The created image is tagged as `brkcol2175clemea2020`.

To start the notebook server execute this command:
```
docker run -it --rm --name jupyter -p 8888:8888 brkcol2175clemea2020
```

If you don't want to build your own image you can also just pull and execute the image I prepared:
```
docker run -it --rm --name jupyter -p 8888:8888 jeokrohn/brkcol2175clemea2020
```

When executed for the 1st time Docker will pull the image from hub.docker.com and then start a container based off this image.  

The options used in both commands:
> -it : requests an interactive console

> --rm : makes sure that the docker container that gets created will be automatically removed when execution finishes

> --name jupyter : sets the name for the running container.

> -p 8888:8888 : maps port 8888 of the local host to port 8888 of the container; required to access the notebook server. If port 8888 on your local system is not available then use a different port; -p 8889:8888 for example maps local port 8889 to port 8888 of the container.

> brkcol2175clemea2020 : is the name of the image to run

That should give you an output similar to this:
```
[I 11:34:43.490 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[I 11:34:44.054 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.7/site-packages/jupyterlab
[I 11:34:44.054 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 11:34:44.059 NotebookApp] Serving notebooks from local directory: /home/jovyan/work/Notebook
[I 11:34:44.060 NotebookApp] The Jupyter Notebook is running at:
[I 11:34:44.060 NotebookApp] http://ccf312f3c029:8888/
[I 11:34:44.060 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
```
Now point your browser to http://localhost:8888 and you should be able to open the live demo notebooks

The password of the notebook server is set to 'brkcol2175'.

You can also execute the Notebooks on Binder:
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jeokrohn/brkcol2175clemea2020/master)


***Have Fun!***

