# Provision a Virtual Machine Web Server with Nginx

## Create a New Feature Branch

Always start with this (or use VS Code to do it!)

- ```git checkout main```
- ```git pull```
- ```git checkout -b eric_new_feature```

## Copy / Merge these files with the main repository

- If the file already exists in the main repository, merge the contents
- If not, simply copy the files

## Configure Variables

- There are 2 days to configure values for the defined variables.
  - copy _terraform.auto.tfvars.example_ to _terraform.auto.tfvars_, update the values, and commit the changes.
  - Open the Terraform Cloud web UI and configure each of these Terraform variables at the workspace level.

Consider the benefits / downsides of each approach.  Discuss them with the team and choose a strategy.

## Plan

Always run a local _terraform plan_ before pushes changes to Github!

## Add, Commit, Push, Pull Request!

- ```git status```
- ```git add .```
- ```git commit -m 'Adding cloud configuration stanza'```
- ```git push origin <branch name>``
- Navigate to the repository in your web browser.
- Create a Pull Request to merge your new feature branch info main.

## Merge!

- After required Pull Request approvals in Github, have the Pull Request merged.
- Follow the Apply in the Terraform Cloud web UI.
- Only merge one of the PR's!
