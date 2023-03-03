# IaC-2-Aula-001

- Criar um módulo terraform que crie em multi regiões (2) os seguintes recursos:
	- VPC
	- 3 Subnets (Uma em cada AZ)
	- Internet Gateway
	- 2 Maquinas EC2  
	- 1 Banco de dados RDS PostgreSQL
	- 1 Balanceador de Carga
	- Security Group para cada recurso acima (EC2, RDS e Balanceador)


```
terraform init
terraform validate
terraform plan
terraform apply
```
