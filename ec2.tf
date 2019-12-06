# cloud provier and region details

provider "aws" {
  region = "us-east-1"
}
 	
# ec2 resource details

resource "aws_instance" "webserver" {
  ami =  "ami-00eb20669e0990cb4"
  instance_type = "t2.micro"
}


