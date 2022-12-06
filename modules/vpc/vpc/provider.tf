provider "aws" {
  region = "us-east-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 4.45.0"
		}
  }
}

terraform {
	cloud {
		organization = "RocketPartners"
		#token        = "rkMPOwnzwzU4RQ.atlasv1.mYBV5NOC3sicVWOazct0dhDzcNErm7fwozIWxvQW3zkObe5vV66zA0S0RGV2V7FplwQ"
		workspaces {
			name = "lift-test"
		}
	}
}
