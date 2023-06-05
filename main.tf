#Creating instance EC2 in AWS

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

resource "aws_instance" "my_ec2_instnce" {
                count = 2
                ami = "ami-0715c1897453cabd1"
                instance_type = "t2.micro"
                tags = {
                        Name = "terraform"
}

 
} 

resource "aws_s3_bucket" "my_s3_bucket" {

                bucket = terraform-pragas-test1-1910
                tags = {
                        Name = "terraform-pragas-test1-1910"
                        Environment = "Dev"


}


}

output "ec2_public_ips" {

                value = aws_instance.my_ec2_instnce[*].public_ip
}