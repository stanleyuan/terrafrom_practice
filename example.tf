provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

resource "aws_s3_bucket" "iii" {
  bucket = "iii-bucket"
  acl    = "private"
}

resource "aws_instance" "depends_on" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  depends_on = ["aws_s3_bucket.iii"]
}
