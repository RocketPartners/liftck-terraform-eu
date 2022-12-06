resource "aws_route53_zone" "tfer--Z05421353C87QJZ3I8JE4_myck-002E-site" {
  force_destroy = "false"
  name          = "myck.site"
}

resource "aws_route53_zone" "tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com" {
  force_destroy = "false"
  name          = "circleklift.com"
}

resource "aws_route53_zone" "tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com" {
  force_destroy = "false"
  name          = "circlekoffers.com"
}
