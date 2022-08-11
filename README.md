[![CircleCI](https://dl.circleci.com/status-badge/img/gh/davidshare/project-ml-microservice-kubernetes/tree/master.svg??style=for-the-badge&logo=appveyor)](https://dl.circleci.com/status-badge/redirect/gh/davidshare/project-ml-microservice-kubernetes/tree/master)


## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Relevant Project Files
- [main file](app.py) - This is the main python file for running the prediction code 
- [Makefile](./Makefile) - The makefile is used to automate the process of setting a virtual environment for the project, installing dependencies, running the tests, and linting the files.
- [Dockerfile](Dockerfile) - The dockerfile is used for containerizing the application
- [.circleci](.circleci/config.yml) - The circleci config file is used for setting up the ci process on circleci. It can perform the same functions as the make file, and is used to run the makefile on the circleci environment
- [run_docker.sh](run_docker.sh) - This file is used for building the application into a docker image. It runs the Dockerfile, and then starts a container from the image that has been built.
- [upload_docker.sh](upload_docker.sh) - This file tags the image that was built with the run_docker.sh file and then pushes it to an online docker repository(Docker Hub).
- [run_kubernetes.sh](run_kubernetes.sh) - This file is responsible for creating a container in a kubernetes cluster using the docker image that has been built and pushed to dockerhub.
- [circleci image](./circleci%20image.png) - image showing success of circleci pipeline
- [docker image](./docker-hub-image.png) - image showing pushed docker image
---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
