# Introdução a Infraestrutura como Código

## Instalação para rodar os exemplos

AWS CLI
https://docs.aws.amazon.com/pt_br/cli/latest/userguide/installing.html

Terraform
https://www.terraform.io/intro/getting-started/install.html

Serverless Framework
https://serverless.com/framework/docs/getting-started/

---

## Configure suas chaves da AWS

https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-getting-started.html


---
## Exemplo com Terraform

Rodar comando na pasta terraform/exemplo1

```shell
$ terraform init
$ terraform apply
```

Para apagar

```shell
$ terraform destroy
```
---
## Exemplo com AWS Cloudformation

Rodar comando na pasta cloudformation/exemplo1

```shell
$ aws cloudformation deploy --template-file=cfn-aws-instance.template --stack-name teste-dev --parameter-overrides Environment=dev Project=teste KeyPair=chave_teste
```

Para apagar

```shell
$ aws cloudformation delete-stack --stack-name teste-dev
```

Rodar comando na pasta serverless/exemplo1

---
## Exemplo com Serverless Framework

```shell
$ serverless deploy --stage dev
```

Para apagar

```shell
$ serverless remove --stage dev
```

