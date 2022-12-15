
terraform {
  cloud {
    organization = "RocketPartners"
    #token        = "rkMPOwnzwzU4RQ.atlasv1.mYBV5NOC3sicVWOazct0dhDzcNErm7fwozIWxvQW3zkObe5vV66zA0S0RGV2V7FplwQ"
    workspaces {
      name = "lift-test"
    }
  }
}


