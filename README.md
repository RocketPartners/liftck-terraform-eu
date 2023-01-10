# liftck-terraform-eu

This repository holds a Circle-K LIFT infrastructure replica of **cirlcek-production** in region *us-east-1*.
This infrastructure is to be stood-up and running in *eu-west-1*. 

Infrastucture for *eu-west-1* is defined as code via **Terraform** (TF). We are currently standing up & testing resources in the **circlek-development** account. Once testing is complete we will start deploying into **cirlcek-production** in region *eu-west-1*.

## Branching Strategy
Git repositories for software components will use a branching model that supports pull request (PR) centric, trunk-based development and is decoupled from sprints and deployments.
  
**Branches**
  
*main* – latest release; lives forever

*develop* – trunk (integration point, upcoming release); lives forever

*release*-<major>.<minor> – concurrent release; created from version tag; deleted when obsolete

*develop*-<major>.<minor> – concurrent trunk (integration point); deleted when obsolete

<*ticket*>[[-<*user*>]-<*note*>] – feature branch; temporary (usually a few days); deleted when merged

<*name*> – side work; temporary or long term; should be used absolutely minimally and never for business related work

Note: Branch names should not contain slashes (/ or \).
  
## Project Layout
```
.
modules(services)
  ├── elasticsearch
  │   ├── resource.tf...
  │   ├── ...
  │   ├── variables.tf
  │   └── outputs.tf
  ├── loadbalancer
  │   ├── resource.tf...
  │   ├── ...
  ├── network
  │   ├── resource.tf...
  │   ├── ...
  ├── rds
  │   ├── resource.tf...
  │   ├── ...
  ├── ...
  │   ├── ...
  │   └── ...
environment(aws-account)
  ├────── main.tf
  └────── variables.tf
```
The [`main.tf`](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build) in the root directory stands up services by calling them via the module block inside of it. The '[`resource.tf`](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)' files within each service directory [configures each service](https://developer.hashicorp.com/terraform/language/resources). The [`variable.tf`](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables) file identifies variables needed in `main.tf` and `resource.tf` configurations. The [`outputs.tf`](https://developer.hashicorp.com/terraform/language/values/outputs) file identifies values that are needed to be passed to other services via variables in the `main.tf` file within the module block.
 
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

Once installed move to your working directory (Environment[Infrastructure]) and create the mentioned `main.tf`.

### Terraform State
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

Add the required `terraform` and `provider` blocks in your `main.tf` file and run
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
  
!!!You're now ready start building!!!
  
## Working with Terraformer
  
The DevOps team used [Terraformer](https://github.com/GoogleCloudPlatform/terraformer) to 'reverse engineer' our current *circlek-production* environment into workable and runnable TF files structured by service. 
Terraformer having taken most of the load off the team, we are now left with formatting and configuring the populated TF   files into reproducable code for any environment. The work for formatting and configuring said TF files is mostly mechanical.
  

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

