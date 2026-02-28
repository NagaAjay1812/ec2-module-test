data "aws_ami" "this" {
  most_recent = true
  owners      = ["self"] # Official Amazon AMIs owner alias

  filter {
    name   = "name"
    values = [""]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}
