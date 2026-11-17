[![Multi-Cloud Continuous Integration](https://github.com/Dhia-NAfti/devops-azure-gcp-aws/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/Dhia-NAfti/devops-azure-gcp-aws/actions/workflows/pythonapp.yml)


# Multi-Cloud Continuous Integration

## Project Overview

This project demonstrates a Python application configured for multi-cloud development environments and automated Continuous Integration (CI) using GitHub Actions.

The objective is to validate Python dependencies, code quality, and automated tests across Azure, Google Cloud Platform (GCP), and Amazon Web Services (AWS) development environments.

## Repository

- **GitHub:** https://github.com/Dhia-NAfti/devops-azure-gcp-aws
- **Original starter project:** https://github.com/noahgift/github-actions-demo

## Cloud Development Environments

The project uses three cloud environments:

| Cloud provider | Development environment |
|---|---|
| Microsoft Azure | Azure Cloud Shell |
| Google Cloud | Google Cloud Shell |
| Amazon Web Services | AWS Ubuntu environment |

## Technologies

- Python
- Git and GitHub
- GitHub Actions
- GNU Make
- Pytest
- Pylint
- Boto3 (AWS SDK)
- Google Cloud Storage Python SDK

## Project Structure

```text
devops-azure-gcp-aws/
├── .github/
│   └── workflows/
│       └── pythonapp.yml
├── hello.py
├── test_hello.py
├── Makefile
├── requirements.txt
├── requirements-aws.txt
├── requirements-gcp.txt
└── README.md
```

## Continuous Integration Pipeline

GitHub Actions automatically validates three cloud-specific dependency profiles using a matrix strategy.

| Cloud profile | Python version |
|---|---|
| Azure | 3.11 |
| Google Cloud | 3.12 |
| AWS | 3.13 |

Each job performs the following steps:

1. Checks out the GitHub repository.
2. Configures the required Python version.
3. Installs common and cloud-specific dependencies.
4. Runs Pylint for static code analysis.
5. Runs automated tests using Pytest.

### Workflow Triggers

The workflow runs on:
- Pushes to the `main` branch.
- Pull requests targeting `main`.
- Manual execution through GitHub Actions.

**Note:** The matrix jobs run on GitHub-hosted Ubuntu runners. They validate the cloud-specific dependency profiles; they do not deploy the application to Azure, GCP, or AWS.

## Running the Project

### Install dependencies

```bash
make install
```

### Install cloud-specific profiles

```bash
make install-azure
make install-gcp
make install-aws
```

### Run code quality checks

```bash
make lint
```

### Execute automated tests

```bash
make test
```

### Run the complete CI process locally

```bash
make all
```

## Validation Results

All three GitHub Actions matrix jobs completed successfully:

| Environment profile | Python | CI result |
|---|---|---|
| Azure | 3.11 | Passed |
| Google Cloud | 3.12 | Passed |
| AWS | 3.13 | Passed |

Additional AWS Ubuntu validation:

- Python runtime: 3.14.4
- Pylint score: 10.00/10
- Pytest: 2 tests passed

## GitHub Actions Results

View the workflow executions:

https://github.com/Dhia-NAfti/devops-azure-gcp-aws/actions

## Demo Video

Video demonstration: **To be added**

The demonstration will cover the repository structure, cloud development environments, dependency installation, linting, automated testing, and GitHub Actions results.

## Author

**Dhia Eddine Nafti**

GitHub: https://github.com/Dhia-NAfti

