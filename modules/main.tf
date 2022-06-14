output "instance" {
	value = aws_instance.webserver
}

resource "aws_subnet" "webserver" {
	vpc_id     = var.vpc_id
	cidr_block = var.cidr_block
}

resource "aws_instance" "webserver" {
	ami           = var.ami
	instance_type = var.instance_type
	key_name      = var.key_name
    user_data     = file("init-script.sh")
	subnet_id     = aws_subnet.webserver.id

	#vpc_security_group_ids = ["${aws_security_group.webserver-sg.id}"]  
    #associate_public_ip_address = true

	tags = {
			Name = var.name
		}
}
