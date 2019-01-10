# terraform-aws-s3-bucket
Terraform module to create S3 bucket on AWS 

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket_name | name of the bucket | string | - | yes |
| tag_environment | environment | string | - | yes |
| versioning | enable versioning | string | `false` | no |
| multipart_delete | enable incomplete multipart upload deletion | string | `true` | no |
| multipart_days | incomplete multipart upload deletion days | string | `14` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket_arn | the arn of the bucket that was created |
| bucket_name | the name of the bucket |
| iam_access_key_id | the access key |
| iam_access_key_secret | the access key secret |
| user_arn | the arn of the user that was created |
| user_name | the name of the service account user that was created |

### usage example

```hcl
provider "aws" {
  region  = "us-east-1"
  profile = "gandolf"
}

module "s3_user" {
  source = "github.com/gandolfmania/terraform-aws-s3-bucket"

  bucket_name = "first-terraform-s3-bucket"

  tag_environment   = "dev"
}
```

```
terraform init
terraform plan
terraform apply
terraform output -module s3_user
```
