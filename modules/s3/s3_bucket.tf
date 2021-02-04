resource "aws_s3_bucket" "mero_bucket" {
  bucket = "mero_terraform_test_bucket"
  acl    = "private"

  tags = {
    Name        = "Mero_bucket"
    Environment = "Dev"
  }
}
