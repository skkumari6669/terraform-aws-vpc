variable "vpc_cidr" {
  default = ""

}

variable "enable_dns_hostnames" {
  default = true
}
variable "project" {
  default = ""
}

variable "environment" {
  default = ""
}

variable "vpc_tags" {
    default = {}
}

variable "common_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

variable "name_igw" {
  default = ""
}

variable "public_subnet_cidr" {
  default = {}
   validation {
        condition = length(var.public_subnet_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_tags" {
  default = {}
   
}

variable "private_subnet_cidr" {
  default = {}
    validation {
        condition = length(var.private_subnet_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "private_subnet_tags" {
  default = {}
  
}

variable "database_subnet_cidr" {
  default = {}
    validation {
        condition = length(var.database_subnet_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}
variable "database_subnet_tags" {
  default = {}
  
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_tags" {
  default = {}
}

variable "private_route_tags" {
  default = {}
}

variable "database_route_tags" {
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "vpc_peering_tags" {
  default = {}
}
