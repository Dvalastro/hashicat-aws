//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/IAmSuperConfused/s3-bucket/aws"
  version = "3.4.0"

  bucket_prefix = "daniel-valastro"
}