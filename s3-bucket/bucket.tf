resource "aws_s3_bucket" "terraform-state" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
}