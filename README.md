# Guia do usuário para usar o Terraform!

O Terraform é uma ferramenta de gerenciamento de infraestrutura como código, desenvolvida pela HashiCorp. Ele permite que você defina e provisione recursos de infraestrutura em diferentes provedores de nuvem, como AWS, Azure, Google Cloud Platform, etc. Neste guia, vamos mostrar como usar o Terraform para provisionar recursos na AWS.


## Pré-requisitos

Antes de começar a usar o Terraform, você precisa ter algumas coisas configuradas:

1.  Terraform instalado em seu sistema
2.  Conta da AWS e credenciais de acesso
3.  Configurações de segurança da AWS

## Passo 1: Configurar o Terraform

Para usar o Terraform com a AWS, você precisará configurar suas credenciais de acesso da AWS no seu arquivo `~/.aws/credentials`. O arquivo deve estar no seguinte formato:
```
[default] 
aws_access_key_id = <seu_access_key_id> 
aws_secret_access_key = <sua_secret_access_key>
```

## Passo 2: Inicializar o diretório Terraform

Depois de definir o código Terraform, você precisa inicializar o diretório Terraform. Isso é feito com o comando `terraform init`. O comando instalará os provedores de recursos necessários, bem como quaisquer outros módulos e plugins necessários.

`terraform init`


## Passo 3: Planejar a execução do código Terraform

Antes de provisionar recursos, você pode planejar a execução do código com o comando `terraform plan`. O comando mostra as alterações que serão feitas no ambiente de destino.

`terraform plan`

## Passo 4: Executar o código Terraform

Para executar o código Terraform, execute o comando `terraform apply`. O comando provisionará os recursos definidos no código.

`terraform apply`

## Passo 5: Limpar recursos provisionados

Se você quiser limpar os recursos provisionados, execute o comando `terraform destroy`. O comando desfará todas as alterações feitas no ambiente de destino.

`terraform destroy`

