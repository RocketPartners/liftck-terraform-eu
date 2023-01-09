# liftck-terraform-eu

This repository holds a Circle-K LIFT infrastructure replica of **cirlcek-production** in region *us-east-1*.
This infrastructure is to be stood-up and running in *eu-west-1*. 

Infrastucture for *eu-west-1* is defined as code via **Terraform** (TF). We are currently standing up & testing resources in the **circlek-development** account. Once testing is complete we will start deploying into **cirlcek-production** in region *eu-west-1*.

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

Once installed move to the working directory where the .TF file(s) are located and create the mentioned `main.tf` file with required blocks and run
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



