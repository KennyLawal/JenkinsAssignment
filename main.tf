provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "jenkinsAssignment"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}


# A terraform file creating an S3 bucket in my AWS account
resource "aws_s3_bucket" "jenkinsBucket" {
  bucket = "jenkinsBucket"  
  acl    = "private"  

  tags = {
    Name = "Web Server Configuration Bucket"
  }
}


