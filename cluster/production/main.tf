module "us-east-redis"{
    source = "..//redis-module/"
    name   = "us-east-2-Production-redis"
    providers = {
        aws = "aws"
    }
}

module "eu-west-redis"{
    source = "..//redis-module/"
    name   = "eu-west-1-Production-redis"
    providers = {
        aws = "aws.eu-west-1"
    }
}

module "ap-east-redis"{
    source = "..//redis-module/"
    name   = "ap-east-1-Production-redis"
    providers = {
        aws = "aws.ap-east-1"
    }
}