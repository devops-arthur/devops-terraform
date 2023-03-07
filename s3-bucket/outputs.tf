# s3-bucket/output.tf
#The bucket_id output exports the ID of the S3 bucket created to store the Terraform state. The bucket_arn output exports the ARN of the S3 bucket. The dynamodb_table_name output exports the name of the DynamoDB table created to lock the Terraform state.
output "bucket_id" {
  value = aws_s3_bucket.terraform_state.id
}

output "bucket_arn" {
  value = aws_s3_bucket.terraform_state.arn
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_state_lock.name
}
