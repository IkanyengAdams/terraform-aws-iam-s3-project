output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.project_ec2.public_ip
}

output "bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.project_bucket.bucket
}

output "iam_role_name" {
  description = "IAM Role Name"
  value       = aws_iam_role.ec2_role.name
}