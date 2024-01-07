output "aws_ami" {
  description = "ami_ID"
  value       = data.aws_ami.centos8.id
}

output "amazon_ami_id" {
    description = "ami_id"
    value = data.aws_ami.aws-linux-2.id  
}