# CI-CD-pipeline-using-Ansible-Jenkins-and-Terraform
The purpose of this repository is to demonstrate in depth the setting up of a CI/CD pipeline.

Steps:
-Download and update the location of Terraform in the PATH environment variable.
-Create a service principal for Microsoft Azure with contributor rights for a certain subscription.
https://www.terraform.io/docs/providers/azurerm/auth/service_principal_client_secret.html
-Use the attributes of the service principal in the file named:terraform.tfvars
-Execute the commands:
i)terraform init
ii)terraform plan  - This will display all the changes that will be executed in Azure.
iii)terraform apply - This will actually go ahead and create the infrastructure in Azure
iv)terraform destroy - To destory the created infrastructure.

