# Variable for terraform

variable "filename" {
	default = "/home/pragas/terraform/terraform-variables/devops-automated.txt"

}
variable "content" {
        default = "This is automated generated from variable"

}

variable "devops_op_trainer" {}

variable "content_map" {

type = map
default = {
"content1" = "This is content 1"
"content2" = "This is content 2"

}

}

variable "file_list" {

type = list 
default = ["/home/pragas/terraform/terraform-variables/file_1.txt","/home/pragas/terraform/terraform-variables/file_2.txt"]

}


variable "aws_ec2_object" {

type = object({

	name = string
	instances = number
	keys = list(string)
	ami  = string
})

default = {

	name = "test_ec2_instance"
	instances = 4
	keys = ["key1.pem","key2.pem"]
	ami = "ubuntu-afedgsjj52"

}

}



variable "no_of_student" {}






