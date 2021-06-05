## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	python3 -m venv ~/.capstone-flaskapp

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -e .
	pip install '.[test]'
	pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	coverage run -m pytest tests/*.py
	coverage report

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	# hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1309,W1202 app.py

all: install
