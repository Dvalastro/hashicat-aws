//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/IAmSuperConfused/s3-bucket/aws"
  version = "3.4.0"

  bucket_prefix = "daniel-valastro"
}

module "s3_bucket_for_logs" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-for-logs"
  acl    = "log-delivery-write"

  # Allow deletion of non-empty bucket
  force_destroy = true

  attach_elb_log_delivery_policy = true
}

# This S3 bucket will not be created
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  create_bucket = false
  # ... omitted
}

