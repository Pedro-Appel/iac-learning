terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 4.0"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "web_app" {
	ami 		= "ami-007855ac798b5175e"
	instance_type 	= "t2.micro"
	key_name	= "notebook_key"
	tags 		= {
				Name = "M1 From notebook"
			}
}
