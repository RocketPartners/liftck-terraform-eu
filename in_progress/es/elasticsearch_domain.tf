terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key="AKIA3ULERJGBXS53NEHQ"
  secret_key="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"
}

resource "aws_elasticsearch_domain" "tfer--gen2" {
  domain_name = "gen2"
}

resource "aws_elasticsearch_domain_policy" "tfer--gen2" {}

resource "aws_elasticsearch_domain_saml_options" "tfer--gen2" {}

resource "aws_opensearch_domain" "gen2" {}

resource "aws_opensearch_domain_saml_options" "gen2" {}
