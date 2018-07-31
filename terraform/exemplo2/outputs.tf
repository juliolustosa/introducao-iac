

output "environment" {
  value = "${var.environment}"
}

output "projects" {
  value = ["${var.projects}"]
}

output "id" {
  value = ["${aws_instance.example2.*.id}"]
}

output "key_name" {
  value = ["${aws_instance.example2.*.key_name}"]
}

output "public_dns" {
  value = ["${aws_instance.example2.*.public_dns}"]
}

output "public_ip" {
  value = ["${aws_instance.example2.*.public_ip}"]
}