module "vpc" {
  source = "./modules/vpc"
}

module "ec2_mongo" {
  source   = "./modules/ec2-mongo"
  vpc_id   = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
}

module "s3_backup" {
  source = "./modules/s3-backup"
}

module "eks" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}
