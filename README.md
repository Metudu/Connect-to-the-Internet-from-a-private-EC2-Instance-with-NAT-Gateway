## Private EC2 Instance with a NAT Gateway
<hr>
This code has written in order to provide internet connection to an EC2 instance which is located at a private subnet. One key pair, two subnets, two EC2 instances, one security group and one NAT Gateway is used to achieve this. Some of the resources was already created by AWS and others has created by Terraform code.

##### You won't be able to run the code if you fork the repository, because the `terraform` block is empty by default. If you want to run, you have to rewrite the terraform block.