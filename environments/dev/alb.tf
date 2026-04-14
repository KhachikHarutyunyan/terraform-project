module "alb" {
  source = "../../modules/alb"

  environment           = var.environment
  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.vpc.public_subnet_ids
  ami_id                = "ami-0a23a9827c6dab833"
  instance_type         = "t2.micro"
  key_name              = "lokdevops-learning"
  ec2_security_group_id = module.ec2.security_group_id
  instance_profile_name = module.ec2.instance_profile_name
  bucket_name           = module.s3.bucket_name
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  tags                  = local.common_tags
}
