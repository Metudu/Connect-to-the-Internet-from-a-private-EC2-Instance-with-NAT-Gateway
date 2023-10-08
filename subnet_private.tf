resource "aws_subnet" "subnet_private" {
    vpc_id = data.aws_vpc.default_vpc.id
    cidr_block = "172.31.48.0/20"
    availability_zone = "eu-central-1a"

    tags = {
      Name = "Private-1a"
    }
}

resource "aws_route_table" "subnet_private_route_table" {
    vpc_id = data.aws_vpc.default_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_gateway.id
    }

    tags = {
      Name = "Private-1a Route Table"
    }
}

resource "aws_route_table_association" "sub_pri_associate" {
    subnet_id = aws_subnet.subnet_private.id
    route_table_id = aws_route_table.subnet_private_route_table.id
}