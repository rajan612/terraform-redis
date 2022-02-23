variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "cluster_name" {
  type = string
  default = redis_cluster
}


variable "at_rest_encryption_enabled" {
  description = "Whether to enable encryption at rest"
  type        = bool
  default     = true
}

variable "transit_encryption_enabled" {
  description = "Whether to enable encryption in transit. Requires 3.2.6 or >=4.0 redis_version"
  type        = bool
  default     = true
}

variable "engine_version" {
  type        = string
  default     = "4.0.10"
  description = "Redis engine version"
}

variable "port" {
  type = any
  default = 6379
}

variable "num_cache_nodes" {
  type = any
}

variable "default_aws_tags" {
  type = object
   default = {
    Owner = list(string)
    Service = string
    Name = string
    Clasification = list(string)
  }
}
