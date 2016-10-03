variable "aws_key" {}
variable "aws_secret" {}
variable "region" {}
variable "key_name" {}
variable "key_path" {}
variable "motd_path" {}

provider "aws" {
  access_key = "${var.aws_key}"
  secret_key = "${var.aws_secret}"
  region     = "${var.region}"
}

resource "aws_instance" "server" {
  ami = "ami-2d39803a"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  provisioner "remote-exec" {
        inline = [
        "sudo echo 'HELLO THIS IS UBUNTU - GAURAV TIWARI' > /tmp/motd",
        "sudo cp /tmp/motd /etc/motd"
        ]
	connection{
		user = "ubuntu"
		private_key = "${file("${var.key_path}")}"
	}
    }
}

output "address" {
  value = "${aws_instance.server.public_dns}"
}
