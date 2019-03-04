module "jenkins-master" {
  source               = "./modules/azure-linux-vm"
  subnet_cidr          = "172.20.10.0/24"
  location             = "${var.location}"
  vm_type              = "jenkins-master"
  vm_admin_username    = "kiranh"
  vm_admin_password    = "Equalexperts@123"
  
}

resource "null_resource" "bootstrap_jenkins-master" {
  
    provisioner "remote-exec" {
      script = "${path.module}/modules/azure-linux-vm/bootstrap_jenkins-master.sh"
    }

    connection {
      type     = "ssh"
      user     = "${module.jenkins-master.virtual_machine_admin_user}"
      password = "${module.jenkins-master.virtual_machine_admin_password}"
      host     = "${module.jenkins-master.virtual_machine_public_ip}"
    }
}

#The below module sets up the application server
module "application-server" {
  source               = "./modules/azure-linux-vm"
  subnet_cidr          = "172.20.20.0/24"
  location             = "${var.location}"
  vm_type              = "app-server"
  vm_admin_username    = "kiranh"
  vm_admin_password    = "Equalexperts@123"
}

#The below resource is used to install Python on the application server, since Ansible requires it.
resource "null_resource" "bootstrap_app-server" {

    provisioner "remote-exec" {
      script = "${path.module}/modules/azure-linux-vm/bootstrap_app-server.sh"
    }

    connection {
      type     = "ssh"
      user     = "${module.application-server.virtual_machine_admin_user}"
      password = "${module.application-server.virtual_machine_admin_password}"
      host     = "${module.application-server.virtual_machine_public_ip}"
    }
}







