terraform {
  required_version = ">= 1.0.0"
}

output "welcome_message" {
  value = "Hello ${var.student_name}, welcome to Terraform!"
  }