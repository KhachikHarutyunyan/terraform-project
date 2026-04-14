
module "s3" {
  source = "../../modules/s3"

  environment        = var.environment
  project            = var.project
  account_id         = var.account_id
  versioning_enabled = true
  force_destroy      = true
  tags               = local.common_tags
}
