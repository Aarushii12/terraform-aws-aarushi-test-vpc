variable "vpc_config" {
  description = "get cidr and the name of vpc"

  type = object({
    cidr_block = string
    name       = string
    public = optional(bool, false)

    // we made an object public, we gave it options but bu default its value is false
  })

  validation {
    condition     = can(cidrnetmask(var.vpc_config.cidr_block))
    error_message = "Invalid CIDR format. Example: 10.0.0.0/16"
  }
}

variable "subnet_config" {
    #sub1 = cidr, az and sub2= cidr, az
#learn how to add validation here
    description = "get cidr and az for subnet"
    type = map({
        cidr_block= string
        az= string
    })


  
}