output "wordpress_endpoint" {
  description = "Public IP for wordpress"
  value = module.EC2.wordpress_endpoint
}