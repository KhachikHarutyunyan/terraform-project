module "ec2" {
  source = "../../modules/ec2"

  environment   = var.environment
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_ids[0]
  instance_type = "t2.micro"
  ami_id        = "ami-0a23a9827c6dab833"
  key_name      = "lokdevops-learning"
  bucket_arn    = module.s3.bucket_arn
  bucket_name   = module.s3.bucket_name
  tags          = local.common_tags
}
