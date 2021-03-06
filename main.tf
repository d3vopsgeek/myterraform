resource "aws_instance" "MyEC2Instance" {
    ami = "ami-0761dd91277e34178"
    instance_type = "t2.micro"
    tags = {
        Name = "Created by Terraform"
    }
}

terraform {
  backend "s3" {
    bucket = "terraform99"
    key    = "prod/ec2_prod_key.tfstate"
    region = "us-east-1"
  }
}

