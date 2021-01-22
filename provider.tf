provider "aws" {
    region = var.region
}

terraform {
    backend "s3" {
        encrypt = "true"
        bucket = "jentf-state-store"
        key = "terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "jenkins-tf"
    }
}
