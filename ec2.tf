module "ec2" {                                # I'm using ec2 module the source will be available below location
  source        = "../terraform-aws-instance" #call the terraform-aws-instance module
  project       = "roboshop"
  environment   = "dev"                   # you dont need to hardcode here if u want you can create variables an pass from there
  ami_id        = "ami-0220d79f3f480ecf5" # data.aws_ami.this.id we can dynamically fetch from aws
  instance_type = "t3.small"
  sg_ids        = ["sg-0b1f7c3d25067bf9a"]
}

