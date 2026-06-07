resource "aws_instance" "ec2" {

  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
