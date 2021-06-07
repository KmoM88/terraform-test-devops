provider "aws" {
  version = "~> 2.7"
  region  = "us-east-1"
}

resource "aws_instance" "web" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}
