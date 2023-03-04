resource "aws_vpc" "vpc" {
  cidr_block           = "10.20.0.0/16"
  enable_dns_hostnames = true
  tags = {
   Name = "vpc-${local.project_name}"
 }
}

resource "aws_internet_gateway" "internet_gateway" {
 vpc_id = aws_vpc.vpc.id
 tags = {
   Name = "InternetGateway-${local.project_name}"
 }
}

resource "aws_subnet" "public_subnet" {
    count = length(data.aws_availability_zones.available.names)
    vpc_id            = aws_vpc.vpc.id
    cidr_block = "10.20.${10+count.index}.0/24"
    availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
    map_public_ip_on_launch = true
    
    tags = {
        Name = "Sub-${local.project_name}-${count.index}"
    }
}

resource "aws_subnet" "private_subnet" {
    count = length(data.aws_availability_zones.available.names)
    vpc_id            = aws_vpc.vpc.id
    cidr_block = "10.20.${20+count.index}.0/24"
    availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
    map_public_ip_on_launch = false
    
    tags = {
        Name = "PrivateSubnet-${local.project_name}-${count.index}"
    }
}
