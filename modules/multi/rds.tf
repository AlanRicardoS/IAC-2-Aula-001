
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = [aws_subnet.private_subnet[0].id, aws_subnet.private_subnet[1].id]

  tags = {
    Name = "DBSunbnetGroup-${local.project_name}"
  }
}

resource "aws_db_instance" "rds_instance" {
  identifier             = "rds-instance"
  db_name                = "rds"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "12"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.rds_security_group.id]
  db_subnet_group_name    = "${aws_db_subnet_group.rds_subnet_group.name}"
  username               = "UserEspecificoPraCaramba"
  password               = "SenhaSuperDificil123!@#%"

  tags = {
    "Name" = "RDS-${local.project_name}"
	  }
}