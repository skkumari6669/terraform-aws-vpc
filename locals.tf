locals {
  resource_name =  "${var.project}-${var.environment}"
  name = "${var.project}-${var.environment}-${var.name_igw}"
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)
} 


