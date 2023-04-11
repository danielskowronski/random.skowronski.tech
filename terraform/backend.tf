terraform {
  backend "s3" {
    bucket = "scloud-terraform"
    key    = "skowronski-tech/random-skowronski-tech.tfstate"
    region = "eu-central-1"
  }
}