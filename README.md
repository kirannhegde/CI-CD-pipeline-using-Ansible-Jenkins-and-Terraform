# CI-CD-pipeline-using-Ansible-Jenkins-and-Terraform
The purpose of this repository is to demonstrate in depth the setting up of a CI/CD pipeline. <br />

Steps:<br />
-Download and update the location of Terraform in the PATH environment variable.<br />
-Create a service principal for Microsoft Azure with contributor rights for a certain subscription.<br />
https://www.terraform.io/docs/providers/azurerm/auth/service_principal_client_secret.html<br />
-Use the attributes of the service principal in the file named:terraform.tfvars<br />
-Execute the commands:<br />
i)terraform init<br />
ii)terraform plan  - This will display all the changes that will be executed in Azure.<br />
iii)terraform apply - This will actually go ahead and create the infrastructure in Azure<br />
iv)terraform destroy - To destory the created infrastructure.<br />

