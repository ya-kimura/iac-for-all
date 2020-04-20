provider "aws"{
  region = "us-east-1"   
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "your_bucket"
    key    = "terraformt.state"
    region = "us-east-1"
  }
}