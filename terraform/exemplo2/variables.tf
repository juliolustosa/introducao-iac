
# Variaveis para serem usadas no Terraform

variable "aws_region" {
  default = "us-east-1"
  description = "Define a Regiao na AWS"
}

variable "environment" {
  description = "Define o ambiente: dev, test, homo, prod"
}

variable "projects" {
  description = "Define a lista dos projetos"
  type = "list"
  default = [
    "projeto1",
    "projeto2",
    "projeto3"
  ]
}
