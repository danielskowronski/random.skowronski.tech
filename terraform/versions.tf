terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.62"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.3"
    }
  }
  
  required_version = "~> 1.4"
}