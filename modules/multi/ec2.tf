resource "aws_instance" "server_amazon_linux" {
    count = 2
    ami = var.amis[data.aws_region.current.name]
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private_subnet[count.index].id
    vpc_security_group_ids = [aws_security_group.server_security_group[count.index].id]

    tags = {
        Name = "Server-${count.index}-${local.project_name}"
        }
}