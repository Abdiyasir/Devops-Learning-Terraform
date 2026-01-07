output "wordpress_endpoint" {
  description = "Public IP for wordpress"
  value = aws_instance.wordpress.public_ip
}