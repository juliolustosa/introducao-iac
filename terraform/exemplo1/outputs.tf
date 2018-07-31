

output "environment" {
  value = "${var.environment}"
}

output "project" {
  value = "${var.project}"
}

output "id" {
  value = "${aws_instance.example.id}"
}

output "key_name" {
  value = "${aws_instance.example.key_name}"
}

output "public_dns" {
  value = "${aws_instance.example.public_dns}"
}

output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}