provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}

module "website" {
  source = "./website"

  route53_zone_name = var.route53_zone_name
  domain_name       = var.domain_name
}
