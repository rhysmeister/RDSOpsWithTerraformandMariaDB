locals {
    identifier               = "rds1"
    allocated_storage        = 10
    engine                   = "mariadb"
    engine_version           = "10.11"
    instance_class           = "db.t3.micro"
    skip_final_snapshot      = true
    multi_az                 = true

    username = "admin"
    password = "TopSecret915!"
}