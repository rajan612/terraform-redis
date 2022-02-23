terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
}

provider "aws" {
  alias  = "ap-east-1"
  region = "ap-east-1"
}


resource "aws_elasticache_cluster" "redis" {
  cluster_id           = var.cluster_name
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = "default.redis3.2"
  engine_version       = var.engine_version
  port                 = var.port
  tags     = var.default_aws_tags 
  parameters = {
  "appendonly"                  = "no",
  "appendfsync"                 = "everysec",  
  "maxmemory-policy"            = "allKeys-lru",
  "hash-max-ziplist-entries"    = "513",
  "zset-max-ziplist-entries"    = "129",
  "list-max-ziplist-size"       = "-2",
  "hash-max-ziplist-value"      = "64",
  "notify-keyspace-events"      = "",
  "zset-max-ziplist-value"      = "64",
  "maxmemory-samples"           = "5",
  "set-max-intset-entries"      = "512",
  "timeout"                     = "600",
  }
}

  context = module.this.context
}
