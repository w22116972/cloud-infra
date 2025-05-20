# cloud-infra

This repository is used to provide cloud infrastructures for multi-cloud and multi-environment deployments.

## Structure

- `providers.tf`: Global default provider configurations
- `variables.tf`: Common/global input variables
- `versions.tf`: Use for setting Terraform core and provider versions across project.
- `envs/`: Environment-specific configurations
    - `aws-dev/`
        - `backend.tf`: Terraform state files
        - `providers.tf`: Different cloud providers per env
        - `main.tf`: Call modules together
        - `variables.tf`
        - `aws.tfvars`: Input actual values per env
    - `aws-prod/`
- `modules`
    - `aws`
        - `eks`
        - `vpc`
    - `gcp`

## Prerequisites

- Terraform >= 1.0.0
- AWS CLI configured

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Select workspace for environment:
```bash
terraform workspace select dev
```

3. Plan and apply changes:
```bash
terraform plan
terraform apply
```