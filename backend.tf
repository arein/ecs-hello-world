terraform {
  backend "s3" {
    bucket = "wc-terraform-test-state"
    key    = "state/hello-world.tfstate"
    region = "us-east-1"
  }
}