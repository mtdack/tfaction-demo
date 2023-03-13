locals {
  # CHANGE
  github_owner = "suzuki-shunsuke"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "us-east-1"               # CHANGE
    bucket = "terraform-tfaction-demo" # CHANGE
    key    = "%%TARGET%%/v1/terraform.tfstate"
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = local.github_owner
}
