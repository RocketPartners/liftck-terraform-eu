resource "aws_acm_certificate" "tfer--2bfd153c-ce5e-41f1-9ba8-a7b8b7626d2d_sip-and-save-002E-circlek-002E-com" {
  domain_name   = "sip-and-save.circlek.com"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["sip-and-save.circlek.com", "sip-and-save.circlekoffers.com"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "tfer--459af342-88df-4c7f-aa12-7a17dad4417c_-002A--002E-circleklift-002E-com" {
  domain_name   = "*.circleklift.com"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.circleklift.com"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "tfer--6e4c5e1a-bdb2-4b69-8c4c-8796937d1979_-002A--002E-myck-002E-site" {
  domain_name   = "*.myck.site"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.myck.site", "myck.site"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "tfer--b63d3f1b-75c9-4d8b-be70-726625e5b771_-002A--002E-circlekoffers-002E-com" {
  domain_name   = "*.circlekoffers.com"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.circlekoffers.com", "circlekoffers.com"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "tfer--d3c937e9-dcf9-4c9e-9b14-a471115ee7dc_-002A--002E-liftck-002E-com" {
  domain_name   = "*.liftck.com"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "DISABLED"
  }

  subject_alternative_names = ["*.liftck.com", "liftck.com"]

  tags = {
    Name = "star.liftck.com"
  }

  tags_all = {
    Name = "star.liftck.com"
  }

  validation_method = "NONE"
}

resource "aws_acm_certificate" "tfer--d7301d4d-e23c-4355-b72d-f06f28e33cca_sip-and-save-002E-circlekoffers-002E-com" {
  domain_name   = "sip-and-save.circlekoffers.com"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["sip-and-save.circlekoffers.com"]

  tags = {
    Name = "Sip and Save"
  }

  tags_all = {
    Name = "Sip and Save"
  }

  validation_method = "DNS"
}
