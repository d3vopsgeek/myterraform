resource "aws_instance" "MyEC2Instance" {
    ami = "ami-0761dd91277e34178"
    instance_type = "t2.micro"
    tags = {
        Name = "Created by Terraform"
    }
}
