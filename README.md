# terraform
Terraform is  IAC

Terraform State file, Desired State , Current state

Terraform Module


Terraform Provisioners :
Provisioners feature allows the user to execute the scripts, shell commands on the local or remote server
during the resource creation or deletion.
the creation or deletion

Two types of provisioners.
1. local-exec:
>local-exec provision allows to invoke a local executable after the resource is executed.
>local-exec is mostly used to execute/run the ansible scripts after the resource is created.
>argument reference is command-Required to execute.
#Example for local-exec

resource "aws_instance" "my_ec2x" {
ami           = "cdskcslksc"
instance_type = "t2.micro"
security_group = "allow_all"
host = public_ip

tags = {
Name = "my_ec2"

}

provisioner "local-exec" {

command = "echo ${hostname} >> plain.txt"

}


2. remote-exec:
>remote-exec is a provisioner is used to invoke the scripts on the remote server after resource is created.
> The remote-exec provisioner requires a connection ans supports both ssh and winrm
> argument reference is inline, script, scripts(list of paths)
>example of remote-exec:



resource "aws_instance" "my_ec2x" {
ami           = "cdskcslksc"
instance_type = "t2.micro"
security_group = "allow_all"

tags = {
Name = "my_ec2"

}
connection {
type = "ssh"
user = "centos"
password = "shikahfda"
host = self.public_ip
}
provisioner "remote-exec" {

inline  = [ #!/bin/bash
"sudo yum install nginx"
"sudo systemctl start nginx"

]
}




1.Never user list as input in terraform always use map.

2.Be careful while using count.

3.Iterate the module not the resorce.

4.If you have multiple accounts and if anyone asks you to store the state file
in a single place, Rather than storing it in a file store it in a database.

5.When you are around terraform no more manual work. Terraform is going to 
help you only if you are going through terraform. If you are bypassing the terraform by using UI, environment will
start deviating. Just be around terraform, not the UI.

6.remove .terraform directory when you are changing from one env to another env. when you use terraform init
to initialise. there is .terraform file is created.

7.cname is canonical name,

8.Load Balancer > Application Load Balance (7 layers).

9.AWS target machines/servers.

10.Auto Scaling Group service by Cloud Provider.(Should automatically create the ec2 and also install software)


11.Custer is group of instances

12.AWSZone.

13 AWS VPC


14 Server connection bastion node


15 AWS VPN, subnet, vpc peering















