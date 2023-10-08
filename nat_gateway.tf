resource "aws_nat_gateway" "nat_gateway" {
    subnet_id = data.aws_subnet.subnet_public.id
    allocation_id = aws_eip.eip.id

    tags = {
        Name = "NAT-GW"
    }
}