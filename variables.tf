//name of the bucket
variable "bucket_name" {}

//enable versioning
variable "versioning" {
  default = false
}

//environment
variable "tag_environment" {}

//incomplete multipart upload deletion
variable "multipart_delete" {
  default = true
}

variable "multipart_days" {
  default = 14
}
