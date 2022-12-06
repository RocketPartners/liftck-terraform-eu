resource "aws_route53_record" "tfer--Z05421353C87QJZ3I8JE4__3f43af5b8796ad6163432f1ebc3a9995-002E-myck-002E-site-002E-_CNAME_" {
  name    = "_3f43af5b8796ad6163432f1ebc3a9995.myck.site"
  records = ["_e53a5b0e91af8f074a034c89341d5388.nhqijqilxf.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z05421353C87QJZ3I8JE4_myck-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z05421353C87QJZ3I8JE4_myck-002E-site-002E-_AAAA_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d1yvwsatwjfv73.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "myck.site"
  type    = "AAAA"
  zone_id = "${aws_route53_zone.tfer--Z05421353C87QJZ3I8JE4_myck-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z05421353C87QJZ3I8JE4_myck-002E-site-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d1yvwsatwjfv73.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "myck.site"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z05421353C87QJZ3I8JE4_myck-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z05421353C87QJZ3I8JE4_myck-002E-site-002E-_NS_" {
  name    = "myck.site"
  records = ["ns-1467.awsdns-55.org.", "ns-1861.awsdns-40.co.uk.", "ns-187.awsdns-23.com.", "ns-760.awsdns-31.net."]
  ttl     = "172800"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z05421353C87QJZ3I8JE4_myck-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z05421353C87QJZ3I8JE4_myck-002E-site-002E-_SOA_" {
  name    = "myck.site"
  records = ["ns-187.awsdns-23.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z05421353C87QJZ3I8JE4_myck-002E-site.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X__amazonses-002E-circleklift-002E-com-002E-_TXT_" {
  name    = "_amazonses.circleklift.com"
  records = ["hmW4m11+ZTgTfgIRizX/WtHHERBPTIvGON9fhBC3zB8="]
  ttl     = "1800"
  type    = "TXT"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X__c0dadad3673893027b53cbfea51e4548-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "_c0dadad3673893027b53cbfea51e4548.circleklift.com"
  records = ["_5d9d0ec47e0410428e6caae159cb0d1a.ltfvzjuylp.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_age-verification-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "age-verification.circleklift.com"
  records = ["d-dio1rnmveg.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_age-verify-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "age-verify.circleklift.com"
  records = ["d1i85sae11guym.cloudfront.net"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_api-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "api.circleklift.com"
  records = ["portal-1840288103.us-east-1.elb.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_barcode-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "barcode.circleklift.com"
  records = ["d-ggb7emmzeb.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com-002E-_NS_" {
  name    = "circleklift.com"
  records = ["ns-1115.awsdns-11.org.", "ns-1982.awsdns-55.co.uk.", "ns-367.awsdns-45.com.", "ns-545.awsdns-04.net."]
  ttl     = "172800"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com-002E-_SOA_" {
  name    = "circleklift.com"
  records = ["ns-1982.awsdns-55.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_client-logger-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "client-logger.circleklift.com"
  records = ["d-h8m26191g8.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_files-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "files.circleklift.com"
  records = ["files.circleklift.com.s3.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_loyalty-points-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "loyalty-points.circleklift.com"
  records = ["d-0ffkj5wtd8.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_no-reply-002E-circleklift-002E-com-002E-_MX_" {
  name    = "no-reply.circleklift.com"
  records = ["10 feedback-smtp.us-east-1.amazonses.com"]
  ttl     = "300"
  type    = "MX"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_no-reply-002E-circleklift-002E-com-002E-_TXT_" {
  name    = "no-reply.circleklift.com"
  records = ["v=spf1 include:amazonses.com ~all"]
  ttl     = "300"
  type    = "TXT"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_nzgvoqf27e4f2gl2ygdnuhmrfus6c25l-002E-_domainkey-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "nzgvoqf27e4f2gl2ygdnuhmrfus6c25l._domainkey.circleklift.com"
  records = ["nzgvoqf27e4f2gl2ygdnuhmrfus6c25l.dkim.amazonses.com"]
  ttl     = "1800"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_one-time-code-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "one-time-code.circleklift.com"
  records = ["d-6bgxp1yvzk.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_player-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "player.circleklift.com"
  records = ["nlb-ab25f3ac807d0ea8.elb.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_portal-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "portal.circleklift.com"
  records = ["dffzdbiqw1q83.cloudfront.net"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_push-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "push.circleklift.com"
  records = ["nlb-ab25f3ac807d0ea8.elb.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_redshift-002E-circleklift-002E-com-002E-_A_" {
  name    = "redshift.circleklift.com"
  records = ["10.20.100.182"]
  ttl     = "300"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_reg-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "reg.circleklift.com"
  records = ["d1lnym9nqmak43.cloudfront.net"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_reports-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "reports.circleklift.com"
  records = ["internal-reports-alb-1067934543.us-east-1.elb.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_screenshot-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "screenshot.circleklift.com"
  records = ["d-jy3r8d6rg1.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_sms-opt-in-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "sms-opt-in.circleklift.com"
  records = ["d-um8pb11k8l.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_tobacco-deals-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "tobacco-deals.circleklift.com"
  records = ["d3tp4qh8agksym.cloudfront.net"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_url-shortener-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "url-shortener.circleklift.com"
  records = ["d-227i2s7dm9.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_verification-codes-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "verification-codes.circleklift.com"
  records = ["d-dx238iih49.execute-api.us-east-1.amazonaws.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_w55vov4erbigtvwphl6nvtp2egn2ahli-002E-_domainkey-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "w55vov4erbigtvwphl6nvtp2egn2ahli._domainkey.circleklift.com"
  records = ["w55vov4erbigtvwphl6nvtp2egn2ahli.dkim.amazonses.com"]
  ttl     = "1800"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z2ZVLALXM3LZ9X_x4uon7s4sa46jhoy56iuby4k2if5og3h-002E-_domainkey-002E-circleklift-002E-com-002E-_CNAME_" {
  name    = "x4uon7s4sa46jhoy56iuby4k2if5og3h._domainkey.circleklift.com"
  records = ["x4uon7s4sa46jhoy56iuby4k2if5og3h.dkim.amazonses.com"]
  ttl     = "1800"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z2ZVLALXM3LZ9X_circleklift-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P__82af23e1cff098b03bd30d9c30e69d96-002E-circlekoffers-002E-com-002E-_CNAME_" {
  name    = "_82af23e1cff098b03bd30d9c30e69d96.circlekoffers.com"
  records = ["_067a07a5b3d8eae6d5a9253ad2f24ad8.vhzmpjdqfx.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P__a94f124f8d589af4e68f77e16c8b18a4-002E-sip-and-save-002E-circlekoffers-002E-com-002E-_CNAME_" {
  name    = "_a94f124f8d589af4e68f77e16c8b18a4.sip-and-save.circlekoffers.com"
  records = ["_9a0980f1b6267041e8858d7ebd207075.xrchbtpdjs.acm-validations.aws."]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "d2797xnhrebbi9.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  name    = "circlekoffers.com"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com-002E-_NS_" {
  name    = "circlekoffers.com"
  records = ["ns-1191.awsdns-20.org.", "ns-1647.awsdns-13.co.uk.", "ns-48.awsdns-06.com.", "ns-963.awsdns-56.net."]
  ttl     = "172800"
  type    = "NS"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com-002E-_SOA_" {
  name    = "circlekoffers.com"
  records = ["ns-1191.awsdns-20.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl     = "900"
  type    = "SOA"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com-002E-_TXT_" {
  name    = "circlekoffers.com"
  records = ["6c0pagl5ddv79d5b6ap3m6gi1l"]
  ttl     = "300"
  type    = "TXT"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_inner-circle-002E-circlekoffers-002E-com-002E-_CNAME_" {
  name    = "inner-circle.circlekoffers.com"
  records = ["ngrp-us-prod-web-loyalty-registration.azurewebsites.net"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_innercircle-002E-circlekoffers-002E-com-002E-_CNAME_" {
  name    = "innercircle.circlekoffers.com"
  records = ["https://ngrp-us-prod-web-loyalty-registration.azurewebsites.net"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_sip-and-save-002E-circlekoffers-002E-com-002E-_CNAME_" {
  name    = "sip-and-save.circlekoffers.com"
  records = ["sip-and-save.circlek.com"]
  ttl     = "300"
  type    = "CNAME"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}

resource "aws_route53_record" "tfer--Z3SDZV1IBZA58P_www-002E-circlekoffers-002E-com-002E-_A_" {
  alias {
    evaluate_target_health = "false"
    name                   = "s3-website-us-east-1.amazonaws.com"
    zone_id                = "Z3AQBSTGFYJSTF"
  }

  name    = "www.circlekoffers.com"
  type    = "A"
  zone_id = "${aws_route53_zone.tfer--Z3SDZV1IBZA58P_circlekoffers-002E-com.zone_id}"
}
