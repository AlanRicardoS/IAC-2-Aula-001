module "eu-west-1" {
  source = "./modules/multi"
  providers = {
    aws = "aws"
  }
  instance_type = "t3.micro"
}
module "eu-west-2" {
  source = "./modules/multi" 
  providers = {
    aws = "aws.eu-west-2"
  }
  instance_type = "t3.micro"
}