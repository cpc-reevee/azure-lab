# Add Cloud Config

## Create a new Branch

Always start new work using the following procedure:

- ```git checkout main```
- ```git pull```
- ```git checkout -b <branch name>```

These actions can also be executed using VS Code's awesoem Github integration.

## Add the cloud stanza shown in _versions.tf_ to the _terraform_ block of the _versions.tf_ in the main repository.

Ensure you modify the _workspace_ value to reflect your team's workspace.

The final _versions.tf_ should look roughly like this:

```
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  cloud {
    organization = "cpchem"
     workspaces {
      name = "rgDT-Immersion-Gold-Sbx"
    }
  }
}
```

## Run _terraform init_

Execute _terraform init_ to download all required providers and validate remote workspace configuration.

## Run _terraform plan_

Execute _terraform plan_ and evaluate the output.

## Stage Your Changes in Git

- ```git status```
- ```git add .```
- ```git commit -m 'Adding cloud configuration stanza'```
- ```git push origin <branch name>```
- Navigate to the repository in your web browser.
- Create a Pull Request to merge your new feature branch info main.

## Merge!

- After required Pull Request approvals in Github, have the Pull Request merged.
- Follow the Apply in the Terraform Cloud web UI.
- Only merge one of the PR's!
