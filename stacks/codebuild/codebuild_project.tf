resource "aws_codebuild_project" "tfer--age-verification-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "age-verification-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "age-verification-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "age-verification-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/age-verification-pipeline-CodeBuildServiceRole-782S4NDHA69J"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--age-verification-webapp-pipeline" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "age-verification-webapp-pipeline"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_MEDIUM"

    environment_variable {
      name  = "ENVIRONMENT"
      type  = "PLAINTEXT"
      value = "production"
    }

    image                       = "aws/codebuild/standard:4.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  name               = "age-verification-webapp-pipeline"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/age-verification-webapp-CodeBuildServiceRole-1CUBDF12JS5FF"

  source {
    buildspec           = "buildspec.yml"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--client-logger-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "client-logger-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "ENVIRONMENT"
      type  = "PLAINTEXT"
      value = "production"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "client-logger-pipeline-build"
    }

    image                       = "aws/codebuild/standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "client-logger-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/client-logger-pipeline-CodeBuildServiceRole-R61HQ4VC9C4X"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--data-sync-notifier-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "data-sync-notifier-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "data-sync-notifier-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "data-sync-notifier-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/data-sync-notifier-pipeline-CodeBuildServiceRole-1MAPG4MF0WDRN"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--indexer-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "indexer-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "indexer-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "indexer-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/indexer-codepipeline-CodeBuildServiceRole-DE5LIXIR26YT"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--liftck-cron-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "liftck-cron-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "ENV"
      type  = "PLAINTEXT"
      value = "prod"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "liftck-cron-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "liftck-cron-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/liftck-cron-CodeBuildServiceRole-G8JH0BPHRCJJ"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--liftck-octanebuilder-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "liftck-octanebuilder-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "ENV"
      type  = "PLAINTEXT"
      value = "prod"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "liftck-octanebuilder-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "liftck-octanebuilder-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/liftck-octanebuilder-stack-CodeBuildServiceRole-1F18HB5JNBXUC"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--liftck-octanebuilder-prod-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "liftck-octanebuilder-prod-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "ENV"
      type  = "PLAINTEXT"
      value = "prod"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "liftck-octanebuilder-prod-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "liftck-octanebuilder-prod-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/liftck-octanebuilder-prod-CodeBuildServiceRole-BQ9QQ9CK0Q3R"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--liftck-player-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "liftck-player-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "ENV"
      type  = "PLAINTEXT"
      value = "prod"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "liftck-player-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  logs_config {
    cloudwatch_logs {
      group_name = "/aws/codebuild/liftck-player-codebuild"
      status     = "ENABLED"
    }
  }

  name               = "liftck-player-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/player-codepipeline-stack-CodeBuildServiceRole-FGYZJYOWQ32Q"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--liftck-redshift-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "liftck-redshift-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_DESTINATION_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-etl"
    }

    environment_variable {
      name  = "S3_SOURCE_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "liftck-redshift-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/liftck-redshift-etl-pipeline-CodeBuildServiceRole-RGRSFTBTJBN"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--liftck-sms-opt-in-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "liftck-sms-opt-in-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_ENVIRONMENT"
      type  = "PLAINTEXT"
      value = "prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "liftck-sms-opt-in-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/sms-pipeline-stack-CodeBuildServiceRole-AKVMW66V6ZH1"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--loyalty-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "loyalty-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-loyalty-container"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/loyalty"
    }

    environment_variable {
      name  = "CF_SERVICE"
      type  = "PLAINTEXT"
      value = "loyalty"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "loyalty-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/loyalty-pipeline-CodeBuildServiceRole-YNPWKZJ3XQO1"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--loyalty-points-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "loyalty-points-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "loyalty-points-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "loyalty-points-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/loyalty-points-counter-codepi-CodeBuildServiceRole-1RBBE63QXSIFD"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-api" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-api"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-api-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/player-api"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "portal-api-prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-api"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/player-api-codepipeline-CodeBuildServiceRole-W3M84CEDMGQJ"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-event-api" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-event-api"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-event-api-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/player-event-api"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "player-event-api-prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-event-api"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/player-event-api-codepipeline-CodeBuildServiceRole-2F03SPL7P2M8"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-file-api" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-file-api"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-file-api-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/player-file-api"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "player-file-api-prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-file-api"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/player-file-api-codepipeline-CodeBuildServiceRole-9KEVQB0EETDN"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-lift-okta-integration" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-lift-okta-integration"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-lift-okta-integration-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/lift-okta-integration"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "prod"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    image                       = "aws/codebuild/java:openjdk-11"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-lift-okta-integration"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/lift-okta-codepipeline-CodeBuildServiceRole-1WHTUN6L5CF1R"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-ngrp-proxy" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-ngrp-proxy"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-ngrp-proxy-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/player-ngrp-proxy"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "player-ngrp-proxy-prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-ngrp-proxy"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/player-ngrp-proxy-codepipelin-CodeBuildServiceRole-YB8DEKD5VEOW"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-pricebook-indexer" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-pricebook-indexer"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-pricebook-indexer-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/pricebook-indexer"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "prod"
    }

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-pricebook-indexer"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/pricebook-indexer-codepipelin-CodeBuildServiceRole-1AFLWGDSZKXX6"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--player-punchcard" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "player-punchcard"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-punchcard-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/player-punchcard"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "player-punchcard-prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "player-punchcard"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/player-punchcard-codepipeline-CodeBuildServiceRole-Y5UHJWGN21TP"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--portal-api" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "portal-api"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "portal-api-container"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKER_HUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/portal-api"
    }

    environment_variable {
      name  = "CF_SPRING_PROFILE"
      type  = "PLAINTEXT"
      value = "portal-api-prod"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "portal-api"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/portal-api-codepipeline-CodeBuildServiceRole-7Q0AVOGJ8P9U"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--portal-webapp" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "portal-webapp"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type                = "BUILD_GENERAL1_MEDIUM"
    image                       = "aws/codebuild/nodejs:8.11.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  name               = "portal-webapp"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/portal-webapp-CodeBuildServiceRole-1UGM164AOPYEF"

  source {
    buildspec           = "buildspec.prod.yml"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--reports-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "reports-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKERHUB_PASSWORD"
      type  = "PLAINTEXT"
      value = "tJeNsDWT4\u0026YtB74W@4^\u0026wiLX"
    }

    environment_variable {
      name  = "CF_DOCKERHUB_USERNAME"
      type  = "PLAINTEXT"
      value = "rocketpartnersdockerhub"
    }

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "reports-container"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/reports"
    }

    environment_variable {
      name  = "CF_SERVICE"
      type  = "PLAINTEXT"
      value = "reports"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "reports-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/reports-pipeline-CodeBuildServiceRole-1JWPGVYJ3ZDEH"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--rocket-etl-api-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "rocket-etl-api-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "rocket-etl-api-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "rocket-etl-api-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/rocket-etl-pipeline-CodeBuildServiceRole-X2GICKF6R8IC"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--sip-and-save-frontend-pipeline" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "sip-and-save-frontend-pipeline"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_MEDIUM"

    environment_variable {
      name  = "ENVIRONMENT"
      type  = "PLAINTEXT"
      value = "prod"
    }

    image                       = "aws/codebuild/standard:5.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  name               = "sip-and-save-frontend-pipeline"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/sip-and-save-frontend-pipelin-CodeBuildServiceRole-RT2J021ULM3S"

  source {
    buildspec           = "buildspec.yml"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--tobacco-deals-pipeline" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "tobacco-deals-pipeline"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_MEDIUM"

    environment_variable {
      name  = "ENVIRONMENT"
      type  = "PLAINTEXT"
      value = "prod"
    }

    image                       = "aws/codebuild/standard:4.0"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "false"
    type                        = "LINUX_CONTAINER"
  }

  name               = "tobacco-deals-pipeline"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/tobacco-deals-pipeline-CodeBuildServiceRole-1GL9DHX6AY3PK"

  source {
    buildspec           = "buildspec.yml"
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--token-tracker-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "token-tracker-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "CF_DOCKER_CONTAINER_NAME"
      type  = "PLAINTEXT"
      value = "player-token-tracker-container"
    }

    environment_variable {
      name  = "CF_REPOSITORY_URI"
      type  = "PLAINTEXT"
      value = "799611636099.dkr.ecr.us-east-1.amazonaws.com/token-tracker"
    }

    environment_variable {
      name  = "CF_SERVICE"
      type  = "PLAINTEXT"
      value = "token-tracker"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "token-tracker-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/token-tracker-pipeline-CodeBuildServiceRole-LOZXUXT4P8ZY"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--url-shortener-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "url-shortener-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "url-shortener-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "url-shortener-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/url-shortener-pipeline-CodeBuildServiceRole-UKLGGV03YG4S"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}

resource "aws_codebuild_project" "tfer--verification-codes-pipeline-build" {
  artifacts {
    encryption_disabled    = "false"
    name                   = "verification-codes-pipeline-build"
    override_artifact_name = "false"
    packaging              = "NONE"
    type                   = "CODEPIPELINE"
  }

  badge_enabled = "false"
  build_timeout = "60"

  cache {
    type = "NO_CACHE"
  }

  concurrent_build_limit = "0"
  encryption_key         = "arn:aws:kms:us-east-1:799611636099:alias/aws/s3"

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"

    environment_variable {
      name  = "S3_BUCKET"
      type  = "PLAINTEXT"
      value = "circlek-prod-codepipeline-artifacts"
    }

    environment_variable {
      name  = "S3_BUCKETPREFIX"
      type  = "PLAINTEXT"
      value = "verification-codes-pipeline-build"
    }

    image                       = "aws/codebuild/java:openjdk-8"
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = "true"
    type                        = "LINUX_CONTAINER"
  }

  name               = "verification-codes-pipeline-build"
  project_visibility = "PRIVATE"
  queued_timeout     = "480"
  service_role       = "arn:aws:iam::799611636099:role/verification-passcode-pipelin-CodeBuildServiceRole-5Y7QG81POLY8"

  source {
    git_clone_depth     = "0"
    insecure_ssl        = "false"
    report_build_status = "false"
    type                = "CODEPIPELINE"
  }
}
