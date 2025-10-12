resource "aws_ssm_parameter" "vpc" {
  type = "String"
  name = "/${var.project_name}/vpc/id"

  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "public_subnets" {
  count = length(aws_subnet.public)
  type  = "String"
  name  = "/${var.project_name}/subnets/public/${var.public_subnets[count.index].availability_zone}/${var.public_subnets[count.index].name}"
  value = aws_subnet.public[count.index].id
}

resource "aws_ssm_parameter" "private_subnets" {
  count = length(aws_subnet.private)
  type  = "String"
  name  = "/${var.project_name}/subnets/private/${var.private_subnets[count.index].availability_zone}/${var.private_subnets[count.index].name}"
  value = aws_subnet.private[count.index].id
}

resource "aws_ssm_parameter" "database_subnets" {
  count = length(aws_subnet.database)
  type  = "String"
  name  = "/${var.project_name}/subnets/database/${var.database_subnets[count.index].availability_zone}/${var.database_subnets[count.index].name}"
  value = aws_subnet.database[count.index].id
}
