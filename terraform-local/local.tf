#Main_terraform_file

resource "local_file" "devops" {

         filename = "/home/ubuntu/terraform-test/terrafrom-local/devops_automated.txt"
         content = "i want to become devops engineer who know terraform"




}

resource "random_string" "rand-str" {

         length = 16
         special = true
         override_special = "!@#$&*()_+{}[]<>:'?"
}
output "rand-str" {

value = random_string.rand-str[*].result

}
