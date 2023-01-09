# liftck-terraform-eu

This repository holds a Circle-K LIFT infrastructure replica of **cirlcek-production** in region *us-east-1*.
This infrastructure is to be stood-up and running in *eu-west-1*. 

Infrastucture for *eu-west-1* is defined as code via **Terraform** (TF). We are currently standing up & testing resources in the **circlek-development** account. Once testing is complete we will start deploying into **cirlcek-production** in region *eu-west-1*.

## Branching Strategy

For each developer working on infrastructure they must create their own branch '*dev-fulano*'. 
This ensure that the developer working on infrastructure has the most up-to-date TF. 
Onced branched off you can create your own 'instance' of the prod environment according to logical components such as 'network', 'RDS', 'Redshift', etc...  
  
Having multiple people apply locally edited code to a shared instance becomes messy. Therefore your AWS sub-account for the **circlek-development** account will allow you to spin up your own infrastructure instances and destroy them when you are not actively using it from your own branch. Each developer branch will emulate their local code so that incase the need of destroying something someone left running arrises or simply viewing one another's code for errors when trying to apply appears we can easily attend to either situation. In this arrangement people will not consider a change committed until they have merged it to the **main branch**

## Project Layout
```
.
├── elasticsearch
│   ├── resource.tf...
│   ├── ...
│   ├── variables.tf
│   ├── outputs.tf
├── ecs
│   ├── resource.tf...
│   ├── ...
├── kinesis
│   ├── resource.tf...
│   ├── ...
├── loadbalancer
│   ├── resource.tf...
│   ├── ...
├── network
│   ├── resource.tf...
│   ├── ...
├── rds
│   ├── resource.tf...
│   ├── ...
├── redshift
│   ├── resource.tf...
│   ├── ...
├── #other components with their respective resources from prod infrastructure
├────── main.tf
└────── variables.tf
```
`main.tf` stands up services by calling them via the module block and the '`resource.tf`' files within each service directory configures each service.
  
an example of the main.tf:
```
terraform {
  ...
  ...
}

provider "aws" {
  ...
  ...
}

module "subnet" {
  source = "./network/subnet/"
  ...
}

module "rds" {
  source = "./rds/"
  pub_sub_1_id  = module.subnet.aws_subnet_tfer--subnet-07d6918830b6abd48_id
  pub_sub_2_id  = module.subnet.aws_subnet_tfer--subnet-0b79e29e16fd8d71c_id
  priv_sub_1_id = module.subnet.aws_subnet_tfer--subnet-0f592478c6198fa9e_id
  priv_sub_2_id = module.subnet.aws_subnet_tfer--subnet-017cb385e5acdbec2_id
  db_password = var.db_password
  vpc_id = module.vpc.aws_vpc_tfer--vpc-072a71590b8c6a80c_id
}
```
The `module "service" {}` block calls the configurations from the service directories via the `source = "..."` parameter.
Certain configurations for services requires values from other services in order to run successfully. The `module "rds"` block pulls values from the `module "subnet"` block by assigning the rds configuration variables for its service with the needed values from the subnet's service configuration in 'dot notation' form `module."name of module in main.tf"."name of terraform resources in 'resource.tf' in service directory"`. Configuration values that are needed for a services that are identified in another module(service) are placed in the `variables.tf` file. Configuration values identified as needed from that other module(service) are placed in the `outputs.tf` file in that module's(service) directory.
  
an example of a 'resource.tf' file in a service directory, in this case the `rds_cluster.tf` file:
```
resource "aws_rds_cluster" "tfer--cirk-prod" {
  #allocated_storage                   = "1"
  apply_immediately = true
  availability_zones                  = ["${data.aws_region.current.name}a", "${data.aws_region.current.name}b",]
  backtrack_window                    = "0"
  backup_retention_period             = "7"
  cluster_identifier                  = "cirk-prod"
  cluster_members                     = ["cirk-prod", "cirk-prod-${data.aws_region.current.name}a"]
  copy_tags_to_snapshot               = "true"
  db_cluster_parameter_group_name     = "cirk-prod-cluster-mysql57"
  db_subnet_group_name                = aws_db_subnet_group.tfer--cirk-prod-subnet-group.name
  #deletion_protection                 = false
  enable_http_endpoint                = "false"
  enabled_cloudwatch_logs_exports     = ["error"]
  engine                              = "aurora-mysql"
  engine_mode                         = "provisioned"
  engine_version                      = "5.7.mysql_aurora.2.10.2"
  iam_database_authentication_enabled = "false"
  iam_roles                           = [aws_iam_role.tfer--cirkdev-rds-role.arn]
  ...
 ```
 the `resource "aws_resource" "terraform_identifier" {}` block stands up a resource within AWS by using the [aws provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster) in [Terraform's public registry](https://registry.terraform.io). In previous paragragh you can see 

## Terraform State
TF stores the current state (what resources are live & the specifications of their configurations) of any infrastructure in a file called `terraform.tfstate` to manage resources deployed via TF.

We will be storing the TF state file for our infrastructure on Hashicorps' [Terraform Cloud](https://cloud.hashicorp.com/products/terraform) [remote state](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/state).

Each `main.tf` should have the following [terraform block](https://developer.hashicorp.com/terraform/language/settings) and [provider block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
```
terraform {
  cloud {
    organization = "RocketPartners"

    workspaces {
      name = "liftck-eu-datacenter"
    }
  }
  required_providers {
    aws = {
      version = "~> 4.45.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  assume_role {
    role_arn = "arn:aws:iam::627729951075:role/terraform_bot"
  }
}
```


## Initialize Terraform

If TF has not been installed download the appropriate Zip from https://www.terraform.io/downloads.html. Unzip the file and put the terraform binary to some place on your PATH.
Run this command to check if everything is working:
```
$ terraform -v
```

The output should resemble
```
Terraform v1.3.7
on darwin_arm64
```

Once installed move to the working directory where the .TF file(s) are located and create the mentioned `main.tf` file with the required `terraform` an  `provider` blocks and run
```
terraform init
```



The output should resemble
```
Initializing Terraform Cloud...

Initializing provider plugins...

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform Cloud has been successfully initialized!

You may now begin working with Terraform Cloud. Try running "terraform plan" to
see any changes that are required for your infrastructure.

If you ever set or change modules or Terraform Settings, run "terraform init"
again to reinitialize your working directory.
```

## Applying code
Running TF from your local work environment creates problems with shared instances of infrastructure, whether it’s prod or dev. 
Potentially you can make changes to your local version of TF before applying it. 
If you run `terraform apply` before pushing the changes to the **main branch**, the team does not have access to that version of the code, as that code is local but running live. 
This can cause problems if someone else needs to debug the infrastructure.
If the person who applied their local version of the code does not immediately push their changes, someone else might pull and edit an older version of the code. 
When they apply that code, they’ll revert the first person’s changes, as TF is declarative. 
This situation quickly becomes confusing and hard to untangle.
For this reason **TF should always be applied from the same location:** *main branch* for **circlek-production**

![Image](https://learning.oreilly.com/api/v2/epubs/urn:orm:book:9781098114664/files/assets/iac2_2003.png)

This ensures that infrastructure is run consistently and is not deviated from current state.

