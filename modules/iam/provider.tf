provider "aws" {
	region ="us-west-1"
	access_key ="AKIASBKBSYPQIR5OYDUA"
	secret_key ="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"
}


terraform {
	required_providers {
		aws = {
	    version = "~> 4.45.0"
		}
  }
}
