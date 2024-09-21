name: Terraform
on: [push]
jobs: 
  terraform:
     runo-on: ubuntu-latest
     steps:
       - name: checkout
         uses: action/checkout@v3
       - name: setup terraform
         uses: hashicorp/setup-tearraform@v2
         with:
            terraform_version: 1.9
       - name: initialization
         run: terraform init
       - name: validate
         run: terraform validate
       - name: format
         run: terraform fmt -check
       - name: plan action
         run: terraform plan
