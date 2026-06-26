# academic-demo-azure-rg

Academic demo: GitHub -> Terraform Cloud -> Azure resource group pipeline.

## What This Demo Does

- Uses GitHub as the source of truth for Terraform code
- Uses a Terraform Cloud VCS workspace for remote speculative plans
- Targets Azure and proposes creation of a single resource group

## Terraform Cloud Expectations

The linked Terraform Cloud workspace should be configured with:

- Execution mode: `remote`
- VCS repo: `xelest/academic-demo-azure-rg`
- Working directory: repository root
- Speculative plans enabled for pull requests
- Pull request updates should trigger speculative plans against the feature branch
- Azure authentication supplied via sensitive environment variables:
  - `ARM_CLIENT_ID`
  - `ARM_CLIENT_SECRET`
  - `ARM_SUBSCRIPTION_ID`
  - `ARM_TENANT_ID`

## Demo Resource

This repository proposes one Azure resource group with default values:

- Name: `rg-academic-demo-eastus-20260626`
- Location: `eastus`

## Local Validation

```bash
terraform init
terraform fmt -check
terraform validate
```
