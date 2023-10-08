resource "aws_instance" "private_instance" {
    ami = "ami-088e71edb8795252f"
    instance_type = "t2.micro"
    key_name = data.aws_key_pair.key_pair.key_name
    vpc_security_group_ids = [ aws_security_group.ssg_ssh.id ]
    subnet_id = aws_subnet.subnet_private.id 

    tags = {
      Name = "Private Instance"
    }
}