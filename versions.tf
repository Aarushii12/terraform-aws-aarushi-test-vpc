terraform {

required_providers {

aws = {
source = "hashicorp/aws"

version = ">=5.54.1"
# using >

}
}
}

provider "aws"{
    region = "us-east-1"
}
