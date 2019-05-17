# Terrafrom Practice

Practice terraform with aws

## Syntax
```terraform
resource "aws_vpc" "main" {
  cidr_block = var.base_cidr_block
}

<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>" {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}
```

### depends_on

depends_on argument is accepted by any resource and accepts a list of resources to create explicit dependencies for.

## Commands
```shell
terraform init
```
It initializes various local settings and data that will be used by subsequent commands and automatically downloads and installs any Provider binary for the providers in use within the configuration

```
terraform apply
```
It shows the execution plan, describing which actions Terraform will take in order to change real infrastructure to match the configuration.

If the plan was created successfully, Terraform will now pause and wait for approval before proceeding. If anything in the plan seems incorrect or dangerous, it is safe to abort here with no changes made to your infrastructure. In this case the plan looks acceptable, so type yes at the confirmation prompt to proceed.

```bash
terraform apply \
  -var 'access_key=foo' \
  -var 'secret_key=bar'
```

```
terraform show
```
It inspects the current state

```
terraform destroy
```
it behaves as if all of the resources have been removed from the configuration.


# Resource
- [A Comprehensive Guide to Terraform](https://blog.gruntwork.io/a-comprehensive-guide-to-terraform-b3d32832baca)
- [GETTING STARTED - AWS](https://learn.hashicorp.com/terraform/getting-started/install)
- [Configuration Language](https://www.terraform.io/docs/configuration/index.html)
- [Terratest](https://www.facebook.com/smalltown0110/posts/2355014914510602)
