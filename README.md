# terraform

1.Never user list as input in terraform always use map.

2.Be careful while using count.

3.Iterate the module not the resorce.

4.If you have multiple accounts and if anyone asks you to store the state file
in a single place, Rather than storing it in a file store it in a database.

5.When you are around terraform no more manual work. Terraform is going to 
help you only if you are going through terraform. If you are bypassing the terraform by using UI, environment will
start deviating. Just be around terraform, not the UI.

6.remove .terraform directory when you are changing from one env to another env. when you use terraform init
to intialise. there is .terraform file is created.



Terraform Module
Terraform Provisioners
Terraform State file, Desired State , Current state


