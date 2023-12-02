resource "aws_kms_key" "this" {
  description             = "This key is used to encrypt bucket objects."
  deletion_window_in_days = 10
}

module "bucket" {
  source = "../"

  name = "tester-bucket"
  kms_key_arn = aws_kms_key.this.arn
}
