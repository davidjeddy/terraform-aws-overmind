# Overmind Terraform module by David J Eddy

![Overmind](https://raw.githubusercontent.com/davidjeddy/terraform-aws-overmind/main/imgs/overmind.png)

- [Overmind Terraform module by David J Eddy](#overmind-terraform-module-by-david-j-eddy)
  - [Description](#description)
  - [Usage](#usage)

## Description

Terraform module to enable [Overmind](https://overmind.tech/) quickly and easily to a project.

## Usage

Following the [Overmind getting-started](https://overmind.tech/resources/getting-started) process this module provides an additional option for onboarding a project managed by Terraform and hosted in AWS.

- Add a reference to the module in your project

```hcl
module "overmind" {
  source  = "davidjeddy/overmind/aws"
  version = "1.0.1"
}
```

- Add a new output in your project

```hcl
output "overmind_iam_role_arn" {
  description = "IAM role ARN for Overmind"
  value = module.overmind.iam_role_arn
}
```

- Execute Terraform to deploy the resources

```sh
terraform apply
...
module.overmind.aws_iam_policy.this: Refreshing state... [id=arn:aws:iam::672699160972:policy/overmind]
module.overmind.aws_iam_role.this: Refreshing state... [id=overmind]
module.overmind.aws_iam_role_policy_attachment.this: Refreshing state... [id=overmind-...]

Apply complete! ...

Outputs:

overmind_iam_role_arn = "arn:aws:iam::672699160972:role/overmind"
```

- Using the `overmind_iam_role_arn` output value, complete [Overmind getting-started](https://overmind.tech/resources/getting-started) process
