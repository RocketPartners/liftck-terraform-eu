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
```terraform
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
  
**Go to** `terraformer` **directory and open the service directory that needs formatting and configuring**
  
```
.
├── cloudwatch
│   ├── cloudwatch_dashboard.tf
│   ├── cloudwatch_event_rule.tf
│   ├── cloudwatch_event_target.tf
│   ├── cloudwatch_metric_alarm.tf
│   ├── outputs.tf
│   └── variables.tf
├── ecs
│   ├── ecs_cluster.tf
│   ├── ecs_service.tf
│   ├── ecs_task_definition.tf
│   ├── outputs.tf
│   └── variables.tf
├── s3
│   ├── outputs.tf
│   ├── s3_bucket.tf
│   ├── s3_bucket_policy.tf
│   └── variables.tf
├──── 'service'
│   ├──'resource.tf'
│   ├──...
│   ├──...
├──── ...
...
```
## Formatiting and configuring

### Example 1
  
Open the '`resource.tf`' file under the service directory. The following configurations need to be correctly formated/corrected:
  
```terraform
#./service_directory_being_formatted/resource.tf

resource "aws_network_resource" "terraform_resource_name" {
  egress {
    ...
    ...
  }

  ingress {
    ...
    ...
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-017cb385e5acdbec2_id}",]
  
  vpc_id     = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-072a71590b8c6a80c_id}"
}
```
Terraformer used the [`terraform_remote_state`](https://developer.hashicorp.com/terraform/language/state/remote-state-data) data resource to configure parameters in a resource that requires other resource values outside the service's directory. 
Terraform runs all `.tf` files found within the current working directory you run a `terraform` command so this was the work around Terraformer used to pull configuration values from the `subnet` and `vpc` service directories.
`"${data.terraform_remote_state.resource.outputs.resource_attribute}"` in this case the subnet id and the vpc id are the configuration values needed.
  
When a resource configuration value can be found in another service directory do the following:
  
*  **Identify what resource is being called in the** `terraform_remote_state` **value** (in this case `subnet`and `vpc`)
*  **If not already in the serivce directory, create a** `variables.tf` **file in the service directory calling the needed value and create a variable that will hold the needed value for the configuration parameter**

```terraform
#./service_directory_being_formatted/variables.tf
variable "public_subnet_1" {
  default = ""
}

variable "vpc_id" {
  default = ""
}
```

* **If not already in the service directory of the service that has the needed configuration value, create a** `outputs.tf` **file in the service directory that has the needed configuration value.**
```terraform
#./service_directory_holding_subnet_value/outputs.tf
output "public_subnet_1" {
  value = aws_subnet.tfer--subnet-0f592478c6198fa9e.id
}

#./service_directory_holding_vpc_value/outputs.tf
output "vpc_id" {
  value = aws_vpc.tfer--vpc-072a71590b8c6a80c.id
}
```
  
  * **In the** '`resource.tf`' **file replace the** `terraform_remote_state` **string with the variable created in the** `variables.tf` **file under the same directory**
```terraform
#./service_directory_being_formatted/resource.tf

resource "aws_network_resource" "terraform_resource_name" {
  egress {
    ...
    ...
  }

  ingress {
    ...
    ...
  }

  subnet_ids = [var.public_subnet_1,]
  
  vpc_id     = var.vpc_id
}
```
  
* **Go to your created** `main.tf` **file under the root directory and call the module(service) once you fully configured and formatted the service**
```terraform
#./main.tf
terraform {
  ...
  ...
  required_providers {
    ...
    ...
    }
  }
}

provider "aws" {
  ...
  ...
  }
}

module "subnet" {
  source = "./subnet/"
}
  
module "vpc" {
  source = "./vpc/"
}
  
module "service" {
  source = "./service_directory/"
  #all variables in the 'variables.tf' file found in the service's directory 
  public_subnet_1 = module.subnet.tfer--subnet-0f592478c6198fa9e.id
  vpc_id          = module.vpc.tfer--vpc-072a71590b8c6a80c.id
  #you can see the 'dot notation' being used is 1. module, 2. name of the module and 3. the output identified in the 'outputs.tf' file within that module's(service) directory
```
If the service(s) that has the needed value is not also called in `main.tf` then review to see if it needs formatting/configurations found in this example and further examples bellow. If it is ready then also call it using its own `module "servie" {}` block.

* **run** `terraform init` **to initiate the new module(s)**
```
Initializing modules...

Initializing Terraform Cloud...

Initializing provider plugins...

Terraform Cloud has been successfully initialized!

You may now begin working with Terraform Cloud. Try running "terraform plan" to
see any changes that are required for your infrastructure.

If you ever set or change modules or Terraform Settings, run "terraform init"
again to reinitialize your working directory.
```
* **run** `terraform plan` **and review provisioned resource(s) to verify the wanted resource(s) will be stood up**
```
Plan: 3 to add, 0 to change, 0 to destroy.
```

* **run** `terraform apply`
```
Apply complete! Resources: 3 to added, 0 to changed, 0 to destroyed.
```
  
### Example 2
  
Terraformer was created more than 2 years ago. Certain providers and their resources have not been updated so certain configurations do not follow the new formats/configurations found in the [provider's documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) in the [Terraform Public Registry](https://registry.terraform.io). 
We are using AWS version 4.45.0 or greater (configuration found in the `provider "aws" {}` block in `main.tf`) so depending on the resource's configuration it might not run successfully.
  
  Depending on your IDE and if you are using a TF plugin (we recommend you do) you will either see:
  * ~~blocks within the resource block striked out due to deprication~~ or
  * a deprecation warning for configurations within the resource block
```terraform
╷
│ Warning: Argument is deprecated
│ 
│   with aws_resource.terraform_resource_name,
│   on main.tf line 'x', in resource "aws_resource" "terraform_resource_name":
│   'x': resource "aws_resource0" "terraform_resource_name" {
│ 
│ Use the updated_aws_resource resource instead
│ 
│ (and 7 more similar warnings elsewhere)
╵
```
  If this is the warning you get after running `terraform plan` then it can still run. If you get:
  ```terraform
╷
│ Warning: Depricated attribute
│ 
│   on main.tf line 'x', in resource "aws_resource" "terraform_resource_name":
│   'x': parameter = configuration_value
│ 
│ The attribute/parameter/value is deprecated. Refer to the provider documentation for details.
│ 
╵
```
  after running `terraform plan` then to go to the [AWS provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) and search in the documentation according to resource name `aws_resource` (whatver that may be in the TF file under the service directory) and add the required configuration/value/block within the resource block.
  
### Example 3
  Certain configuration values are 'hard coded' in that they are straight from the **circlek-production** account. If we were to run the TF files in another account TF would not be able to run them successfully. We need to 'soft code' these configuration values so that TF can apply them to any account necessary. This requires the developer to analyze the `resource.tf` file configurations within the service directories to ensure that the parameter values are connected specifically to **circlek-production**.
  * Account number
  * Region
  * Canonical ID
  
  are the main values associated specifically to **circlek-production**, although there could be others.
  
  **When analyzing the** `resource "aws_resource" "terraform_resource_name" {}` **block configurations follow along with the** [AWS provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) **in the respective resource section**.
  
  
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

