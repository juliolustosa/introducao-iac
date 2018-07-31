# Define o provedor
provider "aws" {
  region     = "${var.aws_region}"
}

# Busca AMI do Ubuntu 16.04
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "example" {
  ami           = "${data.aws_ami.ubuntu.id}" # Utiliza AMI da busca
  instance_type = "t2.micro"

  key_name = "chave_teste"

  tags {
    Name        = "${var.environment}-${var.project}" # Nome da instancia
    Environment = "${var.environment}"                # Nome do ambiente
    Project     = "${var.project}"                    # Nome do Projeto
  }
}
