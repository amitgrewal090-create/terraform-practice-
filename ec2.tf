data "aws_ami" "amazon_linux" {
most_recent = true
owners      = ["amazon"]

filter {
name   = "name"
values = ["al2023-ami-*-x86_64"]
}

filter {
name   = "state"
values = ["available"]
}
}

resource "aws_instance" "devops_ec2" {
ami           = data.aws_ami.amazon_linux.id
instance_type = "t3.micro"
key_name      = "terraform-ec2-key"

lifecycle {
ignore_changes = [ami]
}

tags = {
Name        = "Terraform-DevOps-EC2"
Environment = "Learning"
}
}