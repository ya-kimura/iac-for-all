data "aws_ami" "ubuntu" {
  most_recent = true
  
  filter {
    name   = "name"
    values = ["IaaS-${var.hash_commit}"] 
  }

  owners = ["400683492618"] # my user
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c700090eace46e72"
  vpc_security_group_ids = ["${aws_security_group.allow_http.id}"]
 
  tags = {
    Name = "HelloWorld"
  }
}

