output "ec2_ip" {
  description = "IP da VM criada na AWS"
  value       = aws_instance.ec2.public_ip
}