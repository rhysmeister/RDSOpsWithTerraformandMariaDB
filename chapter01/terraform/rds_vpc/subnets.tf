resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = data.aws_availability_zones.available_azs.names[0]
    cidr_block = "10.0.1.0/24"
    assign_ipv6_address_on_creation = false

    tags = {
        Name = "public-subnet-1"
    }
}

resource "aws_subnet" "private_subnet1" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = data.aws_availability_zones.available_azs.names[0]
    cidr_block = "10.0.2.0/24"
    assign_ipv6_address_on_creation = false

    tags = {
        Name = "private-subnet-1"
    }
}

resource "aws_subnet" "private_subnet2" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = data.aws_availability_zones.available_azs.names[1]
    cidr_block = "10.0.3.0/24"
    assign_ipv6_address_on_creation = false

    tags = {
        Name = "private-subnet-2"
    }
}

resource "aws_subnet" "private_subnet3" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = data.aws_availability_zones.available_azs.names[2]
    cidr_block = "10.0.3.0/24"
    assign_ipv6_address_on_creation = false

    tags = {
        Name = "private-subnet-3"
    }
}
