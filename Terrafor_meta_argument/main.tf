#Creating ec2 with different names for each EC2 instance

terraform {

     required_providers {
         aws = {
         source = "hashicorp/aws" 
         version = "~> 4.16"
}
}       
 
required_version = ">= 1.2.0"

}

provider "aws" {

region = "us-east-1"

}

locals {

     instance_names = toset(["Pragas","Rakesh","Rahul","Shivam"])

     #----instance with different AMI Role-----
     #instance_names = {"Pragas":"----ANI_ID------","Rakesh":"----ANI_ID------","Rahul":"----ANI_ID------","Shivam":"----ANI_ID------"}
}

resource "aws_instance" "my_ec2_instance" {
                for each = local.instance_names
                ami = "ami-0715c1897453cabd1"
                #ami = each.value
                instance_type = "t2.micro"
                tags = {
                    Name = each.key
                    #Name = each.key
}
} 



