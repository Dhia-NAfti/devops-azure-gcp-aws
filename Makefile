
# Common Python dependencies
install:
	python -m pip install --upgrade pip
	python -m pip install -r requirements.txt

# Microsoft Azure profile
install-azure: install
	@echo "Installing Azure dependencies"

# Google Cloud profile
install-gcp: install
	python -m pip install -r requirements-gcp.txt

# Amazon Web Services profile
install-aws: install
	python -m pip install -r requirements-aws.txt

# Code quality
lint:
	python -m pylint --disable=R,C hello.py

# Automated tests
test:
	python -m pytest -vv test_hello.py

# General CI
all: install lint test

# Cloud-specific CI
all-azure: install-azure lint test

all-gcp: install-gcp lint test

all-aws: install-aws lint test

.PHONY: install install-azure install-gcp install-aws lint test all all-azure all-gcp all-aws

