
module "mero_vpc"{
source = "../modules/vpc"
vpc_cidr= "10.0.0.0/16"
tenancy= "default"
vpc_id = "modules.mero_vpc.vpc_id"
subnet_cidr= "10.0.1.0/24"


}

module "mero_instance" {
source = "../modules/ec2"
ec2_count = "1"
ami_id = "ami-047a51fa27710816e"
inst_type= "t2.micro"
subnet_id = "modules.vpc.subnet_id"
}
