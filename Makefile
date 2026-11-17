
# Common dependencies
install:
	pip install --upgrade pip
	pip install -r requirements.txt

# Google Cloud dependencies
install-gcp: install
	pip install -r requirements-gcp.txt

# AWS dependencies
install-aws: install
	pip install -r requirements-aws.txt

# Code quality
lint:
	pylint --disable=R,C hello.py

# Automated tests
test:
	python -m pytest -vv test_hello.py

# General CI
all: install lint test

# GCP CI
all-gcp: install-gcp lint test

# AWS CI
all-aws: install-aws lint test

.PHONY: install install-gcp install-aws lint test all all-gcp all-aws

