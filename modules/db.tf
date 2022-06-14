# resource "aws_db_instance" "rds-webserver" {
#   allocated_storage    = 20
#   engine               = "postgres"
#   identifier           = "tf-db"     
#   engine_version       = "13"
#   instance_class       = "db.t3.medium"
#   username             = "postgres"
#   password             = "postgres"
#   skip_final_snapshot  = true
#   publicly_accessible  = true
#   vpc_security_group_ids = ["${aws_security_group.webserver-sg.id}"]
#} 