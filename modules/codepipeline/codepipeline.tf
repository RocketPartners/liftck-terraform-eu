resource "aws_codepipeline" "tfer--age-verification-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "age-verification-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/age-verification-pipeline-CodePipelineServiceRole-MAT9FQ5XOEX5"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "age-verification-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "age-verification-changeset"
        ParameterOverrides = "{\"apiKeys\": \"23e6bd75-1a64-4fa4-a9d1-c6793a7b650f\", \"certificateArn\": \"arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c\", \"domainName\": \"circleklift.com\", \"environment\": \"prod\", \"getLoyaltyUri\": \"https://lift.allpoints.io/consumers/\", \"lexisNexisMode\": \"live\", \"lexisNexisPassword\": \"Rk!3vl4L8x\", \"lexisNexisUri\": \"https://ws.idms.lexisnexis.com/restws/identity/v3/accounts/35665/workflows/customers.circlek.verify.age.workflow/conversations\", \"lexisNexisUserId\": \"CircleK_Integ\", \"pdiXRetailerGuid\": \"CC0C3C80-7774-4EA6-AF20-E544EC51CB19\", \"pdiOcpApimSubscriptionKey\": \"7de5d5cba0284519bd8529d22404a339\", \"resourcePrefix\": \"age-verification\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/age-verification-lambda-role"
        StackName          = "age-verification-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "cirk_age_verification_microsite_api"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--age-verification-webapp-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "age-verification-webapp-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/age-verification-webapp-CodePipelineServiceRole-FCOVJSIHG9M4"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "age-verification-webapp-pipeline"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "2"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "cirk_age_verification_microsite"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--client-logger-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "client-logger-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/client-logger-pipeline-CodePipelineServiceRole-E71DV5RUIOLR"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "client-logger-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "client-logger-changeset"
        ParameterOverrides = "{\"apiKeys\": \"todoprod\", \"certificateArn\": \"arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c\", \"domainName\": \"circleklift.com\", \"environment\": \"production\", \"resourcePrefix\": \"client-logger\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/client-logger-lambda-role"
        StackName          = "client-logger-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_client_logging"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--data-sync-notifier-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "data-sync-notifier-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/data-sync-notifier-pipelin-CodePipelineServiceRole-62LYNTYBC9S9"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "data-sync-notifier-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "data-sync-notifier-changeset"
        ParameterOverrides = "{ \"resourcePrefix\": \"data-sync-notifier\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/data-sync-notifier-lambda-role"
        StackName          = "data-sync-notifier-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_data_sync_notifier"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--indexer" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "indexer"
  role_arn = "arn:aws:iam::799611636099:role/indexer-codepipeline-CodePipelineServiceRole-WZOYUUV21TB3"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "indexer-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "indexer-changeset"
        ParameterOverrides = "{\"LAMBDANAME\": \"indexer-lambda\", \"SQLDBURL\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull\", \"SQLDBUSER\": \"cirkadmin\", \"SQLDBPASS\": \"QJrz8dQ7aifpYThpyYfxCFfC2\", \"SQLDBROURL\": \"jdbc:mysql://cirk-prod.cluster-ro-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull\", \"SQLDBROUSER\": \"cirkadmin\", \"SQLDBROPASS\": \"QJrz8dQ7aifpYThpyYfxCFfC2\", \"ELASTICDBURL\": \"https://vpc-gen2-sts7k7orlpti22i4leh2kmslhm.us-east-1.es.amazonaws.com\", \"VPCID\": \"vpc-072a71590b8c6a80c\", \"SERVICESUBNETS\": \"subnet-0f592478c6198fa9e,subnet-017cb385e5acdbec2\"}"
        RoleArn            = "arn:aws:iam::799611636099:role/lambda-role-indexer-lambda"
        StackName          = "indexer-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_indexer"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--lift-okta-integration-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "lift-okta-integration-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/lift-okta-codepipeline-CodePipelineServiceRole-1T9BQ7MH26KTF"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-lift-okta-integration"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "lift-okta-integration"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "lift-okta-integration"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--liftck-cron-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "liftck-cron-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/liftck-cron-CodePipelineServiceRole-4W1XLSR3NP65"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "liftck-cron-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "liftck-cron-changeset"
        ParameterOverrides = "{\"environment\": \"prod\", \"resourcePrefix\": \"liftck-cron\", \"sqlPass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\", \"sqlUser\": \"cirkadmin\", \"sqlUrl\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/liftck-cron-lambda-role"
        StackName          = "liftck-cron-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_cron"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--liftck-octanebuilder-prod-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "liftck-octanebuilder-prod-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/liftck-octanebuilder-prod-CodePipelineServiceRole-SRMN0NZWH11"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "liftck-octanebuilder-prod-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "liftck-octanebuilder-prod-changeset"
        ParameterOverrides = "{\"environment\": \"prod\", \"resourcePrefix\": \"liftck-octanebuilder-prod\", \"sqlPass\": \"QJrz8dQ7aifpYThpyYfxCFfC2\", \"sqlUser\": \"cirkadmin\", \"sqlUrl\": \"jdbc:mysql://cirk-prod.cluster-cwmhmb7mi9yp.us-east-1.rds.amazonaws.com:3306/lift?autoReconnect=true\u0026useUnicode=yes\u0026characterEncoding=UTF-8\u0026useSSL=false\u0026zeroDateTimeBehavior=convertToNull\", \"bucketName\": \"files.circleklift.com\", \"tenantCode\": \"ie\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/liftck-octanebuilder-prod-lambda-role"
        StackName          = "liftck-octanebuilder-prod-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_octane_builder"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--liftck-player-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "liftck-player-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/player-codepipeline-stack-CodePipelineServiceRole-19DB9Q5WJCRXS"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "liftck-player-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "GradleBuildZip"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_player"
      }

      name             = "G2Player"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "GitHubCommitTrigger"
  }
}

resource "aws_codepipeline" "tfer--liftck-redshift" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "liftck-redshift"
  role_arn = "arn:aws:iam::799611636099:role/liftck-redshift-etl-pipeli-CodePipelineServiceRole-1KBT02L9ULGRB"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "liftck-redshift-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "CodeBuild"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "master"
        Owner  = "RocketPartners"
        Repo   = "liftck_redshift"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "GitHubTrigger"
  }
}

resource "aws_codepipeline" "tfer--liftck-sms-opt-in" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "liftck-sms-opt-in"
  role_arn = "arn:aws:iam::799611636099:role/sms-pipeline-stack-CodePipelineServiceRole-1MKBAFPWAK7NH"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "liftck-sms-opt-in-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "CodeBuild"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_sms_opt_in"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "GitHubTrigger"
  }
}

resource "aws_codepipeline" "tfer--loyalty-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "loyalty-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/loyalty-pipeline-CodePipelineServiceRole-1C5EHEPY19294"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "loyalty-build"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "loyalty"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_loyalty"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--loyalty-points-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "loyalty-points-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/loyalty-points-counter-cod-CodePipelineServiceRole-HKUB9DWSSSJB"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "loyalty-points-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "loyalty-points-changeset"
        ParameterOverrides = "{\"apiKeys\": \"7erzg89b2w8e9yfb2jmkq\", \"certificateArn\": \"arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c\", \"domainName\": \"circleklift.com\", \"environment\": \"prod\",\"resourcePrefix\": \"loyalty-points\"}"
        RoleArn            = "arn:aws:iam::799611636099:role/loyalty-points-lambda-role"
        StackName          = "loyalty-points-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "master"
        Owner  = "RocketPartners"
        Repo   = "liftck_loyalty_point_counter"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--player-api" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "player-api"
  role_arn = "arn:aws:iam::799611636099:role/player-api-codepipeline-CodePipelineServiceRole-15O2N7I0YNRSE"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-api"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "api"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-player-api-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_snooze"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--player-event-api" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "player-event-api"
  role_arn = "arn:aws:iam::799611636099:role/player-event-api-codepipel-CodePipelineServiceRole-1H5SC4DE58NX1"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-event-api"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "event-api"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-player-event-api-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_snooze"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--player-file-api" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "player-file-api"
  role_arn = "arn:aws:iam::799611636099:role/player-file-api-codepipeli-CodePipelineServiceRole-L66871B73B7Z"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-file-api"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "file-api"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-player-file-api-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_snooze"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--player-ngrp-proxy" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "player-ngrp-proxy"
  role_arn = "arn:aws:iam::799611636099:role/player-ngrp-proxy-codepipe-CodePipelineServiceRole-TZFR65AAFHWN"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-ngrp-proxy"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "ngrp-proxy"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-player-ngrp-proxy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_snooze"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--player-punchcard" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "player-punchcard"
  role_arn = "arn:aws:iam::799611636099:role/player-punchcard-codepipel-CodePipelineServiceRole-LK79VG22HMCA"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-punchcard"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "punchcard"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-player-punchcard-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_snooze"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--portal-api" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "portal-api"
  role_arn = "arn:aws:iam::799611636099:role/portal-api-codepipeline-CodePipelineServiceRole-L73HYPBGXC2L"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "portal-api"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "portal"
        FileName    = "imagedefinitions.json"
        ServiceName = "api"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-portal-api-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_snooze"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--portal-webapp" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "portal-webapp"
  role_arn = "arn:aws:iam::799611636099:role/portal-webapp-CodePipelineServiceRole-TPMNY24WDR5D"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "portal-webapp"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_portal"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--pricebook-indexer-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "pricebook-indexer-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/pricebook-indexer-codepipe-CodePipelineServiceRole-1U8ILPNBAZJ86"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "player-pricebook-indexer"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "pricebook-indexer"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_pricebook_indexer"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--reports-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "reports-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/reports-pipeline-CodePipelineServiceRole-TJIPOTRA2WVJ"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "reports-build"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "reports"
        FileName    = "imagedefinitions.json"
        ServiceName = "reports-service"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_gen2_legacy_reports"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--rocket-etl-api-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "rocket-etl-api-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/rocket-etl-pipeline-CodePipelineServiceRole-6NDLMS200W4A"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "rocket-etl-api-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "rocket-etl-changeset"
        ParameterOverrides = "{\"resourcePrefix\": \"rocket-etl\", \"envType\": \"prod\", \"vpcId\": \"vpc-072a71590b8c6a80c\", \"subnetIDs\": \"subnet-0f592478c6198fa9e,subnet-017cb385e5acdbec2\", \"lambdaS3Bucket\": \"arn:aws:s3:::circlek-prod-etl\"}"
        RoleArn            = "arn:aws:iam::799611636099:role/rocket-etl-lambda-role"
        StackName          = "rocket-etl-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "master"
        Owner  = "RocketPartners"
        Repo   = "rocket-etl"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--sip-and-save-frontend-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "sip-and-save-frontend-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/sip-and-save-frontend-pipe-CodePipelineServiceRole-OVD3WRF3RMTU"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "sip-and-save-frontend-pipeline"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "2"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        BranchName           = "deploy-prod"
        ConnectionArn        = "arn:aws:codestar-connections:us-east-1:799611636099:connection/78ef6c8d-5112-47ba-b894-4fb1d5db2c4e"
        FullRepositoryId     = "circlek-global/snsw-service-webapp"
        OutputArtifactFormat = "CODE_ZIP"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "AWS"
      provider         = "CodeStarSourceConnection"
      region           = "us-east-1"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--tobacco-deals-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "tobacco-deals-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/tobacco-deals-pipeline-CodePipelineServiceRole-1PO9BL5VBUHKL"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "tobacco-deals-pipeline"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "2"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_tobacco_deals"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--token-tracker-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "token-tracker-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/token-tracker-pipeline-CodePipelineServiceRole-NATFOTS2OD93"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "token-tracker-build"
      }

      input_artifacts  = ["App"]
      name             = "Build"
      output_artifacts = ["BuildOutput"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "Build"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ClusterName = "player"
        FileName    = "imagedefinitions.json"
        ServiceName = "token-tracker"
      }

      input_artifacts = ["BuildOutput"]
      name            = "Deploy"
      owner           = "AWS"
      provider        = "ECS"
      run_order       = "1"
      version         = "1"
    }

    name = "Deploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_token_tracker"
      }

      name             = "App"
      output_artifacts = ["App"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "Source"
  }
}

resource "aws_codepipeline" "tfer--url-shortener-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "url-shortener-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/url-shortener-pipeline-CodePipelineServiceRole-K087Z21LJECJ"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "url-shortener-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "url-shortener-changeset"
        ParameterOverrides = "{\"apiKeys\": \"23e6bd75-1a64-4fa4-a9d1-c6793a7b650f\", \"certificateArn\": \"arn:aws:acm:us-east-1:799611636099:certificate/6e4c5e1a-bdb2-4b69-8c4c-8796937d1979\", \"domainName\": \"myck.site\", \"environment\": \"prod\", \"resourcePrefix\": \"url-shortener\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/url-shortener-lambda-role"
        StackName          = "url-shortener-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_url_shortener"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}

resource "aws_codepipeline" "tfer--verification-codes-pipeline" {
  artifact_store {
    location = "circlek-prod-codepipeline-artifacts"
    type     = "S3"
  }

  name     = "verification-codes-pipeline"
  role_arn = "arn:aws:iam::799611636099:role/verification-passcode-pipe-CodePipelineServiceRole-1TZZ7SXC6YJFJ"

  stage {
    action {
      category = "Build"

      configuration = {
        ProjectName = "verification-codes-pipeline-build"
      }

      input_artifacts  = ["SourceArtifact"]
      name             = "Build"
      output_artifacts = ["BuildArtifact"]
      owner            = "AWS"
      provider         = "CodeBuild"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaBuild"
  }

  stage {
    action {
      category = "Deploy"

      configuration = {
        ActionMode         = "CREATE_UPDATE"
        Capabilities       = "CAPABILITY_IAM,CAPABILITY_AUTO_EXPAND,CAPABILITY_NAMED_IAM"
        ChangeSetName      = "verification-codes-changeset"
        ParameterOverrides = "{\"apiKeys\": \"23e6bd75-1a64-4fa4-a9d1-c6793a7b650f\", \"certificateArn\": \"arn:aws:acm:us-east-1:799611636099:certificate/459af342-88df-4c7f-aa12-7a17dad4417c\", \"domainName\": \"circleklift.com\", \"environment\": \"prod\", \"resourcePrefix\": \"verification-codes\", \"smsApiKey\": \"liftverifcode-g8f9m6bef85q86cacbf53x13a9\", \"smsUri\": \"https://sms-opt-in.circleklift.com/sms/manual-send\" }"
        RoleArn            = "arn:aws:iam::799611636099:role/verification-codes-lambda-role"
        StackName          = "verification-codes-stack"
        TemplatePath       = "BuildArtifact::outputtemplate.yaml"
      }

      input_artifacts = ["BuildArtifact"]
      name            = "CreateUpdateLambda"
      owner           = "AWS"
      provider        = "CloudFormation"
      run_order       = "1"
      version         = "1"
    }

    name = "LambdaDeploy"
  }

  stage {
    action {
      category = "Source"

      configuration = {
        Branch = "deploy-prod"
        Owner  = "RocketPartners"
        Repo   = "liftck_verification_code"
      }

      name             = "App"
      output_artifacts = ["SourceArtifact"]
      owner            = "ThirdParty"
      provider         = "GitHub"
      run_order        = "1"
      version          = "1"
    }

    name = "LambdaSource"
  }
}
