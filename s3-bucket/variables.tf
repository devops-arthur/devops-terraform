# s3-bucket/variables.tf

variable "bucket_name" {}

variable "acl_value" {
    default = "private"
}
variable "aws_access_key" {
default = "ASIAQIYCJYNNPEYX6Q42"
}
variable "aws_secret_key" {
default = "LM9ASkTBKRMd8tGtacAMZfL74Nk5S+er6CTmx0Ly"
 }
variable "region" {
    default = "region"
}
