# udacity-devops-capstone

## CircleCI Pipeline status:
[![<ORG_NAME>](https://circleci.com/gh/Phermann91/udacity-devops-capstone.svg?style=svg)](https://circleci.com/pipelines/gh/Phermann91/udacity-devops-capstone)


## Udacity Capstone project overview

This project is part of the [Udacity Cloud DevOps Engineer](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991) Capstone Project. In this project a [blog app](https://flask.palletsprojects.com/tutorial/), part of a Flask tuturial, used as a microservice is being built within a CricleCI CI/CD pipeline and finally deployed on an AWS EKS cluster.

## Test the app locally

### Installation

The `udacity-devops-capstone` repository provides a Makefile which makes the installation straight forward.

```
make setup
source ~/.capstone-flaskapp/bin/activate
make install
```

### Run

```
export FLASK_APP=flaskr
export FLASK_ENV=development
flask init-db
flask run
```

Open http://127.0.0.1:5000 in a browser.


