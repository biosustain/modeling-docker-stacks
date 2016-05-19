# cobra-spawner

This is a custom Jupyter Notebook server Docker image. 
The `Dockerfile` builds from the `biosustain/cobra-notebook` image, but customizes the image in the following ways:

* installs an additional Python package to make it available to notebooks
* mounts remote folder to the user's server

Coupled with https://github.com/biosustain/jupyterhub-deploy-docker
