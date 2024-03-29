resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "route_table1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

resource "aws_route_table_association" "default_route_assoc" {
    subnet_id      = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.route_table1.id
}