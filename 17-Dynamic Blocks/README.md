# Terraform Dynamic Blocks

Dynamic blocks allow you to dynamically generate blocks of configuration based on conditions or loops within your Terraform code. This is particularly useful for creating complex configurations that vary depending on input parameters or external data.

## Syntax

The syntax for a dynamic block is as follows

```sh

resource "resource_type" "name" {
  dynamic "block_name" {
    for = <expression>
    content {
      attribute1 = <expression>
      attribute2 = <expression>
      # ...
    }
  }
}

```
---

- `for`: Specifies the condition or loop that determines whether the block is generated.
- `content`: Defines the configuration within the block


- *Resource changes*: A list of resources that will be created, updated, or deleted.
- *Attribute changes*: Specific attributes of resources that will be modified.
- *Infrastructure drift*: Any differences between the current state of your infrastructure and the desired state defined in your Terraform configuration.
- *Summary*: A concise overview of the changes to be applied.

## EXAMPLE

### Create a Simple Terraform Configuration

```sh

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name     = "my-key-pair"
}

```
---

### Use the `-out` flag: Save the plan to a file for later review or application

```sh

terraform plan -out=my-plan.tfstate

```
---

### Applying the plan, use the `terraform apply` command to apply the planned changes to your infrastructure.


```sh

terraform apply my-plan.tfstate

```
---

## Terraform Import

Terraform import allows you to bring existing infrastructure resources under Terraform management. This is useful when you have infrastructure that was created manually or using other tools and want to incorporate it into your Terraform configuration.

### Steps to Import an Existing Resource

#### Identify the Resource Type and ID
- Determine the Terraform resource type that corresponds to the existing resource (e.g., aws_instance, aws_security_group).
- Obtain the unique ID of the resource from your cloud provider's console or API.

#### Create a Terraform Configuration
- Define the resource in your Terraform configuration file using the appropriate resource type and ID:

```sh

resource "aws_instance" "existing_instance" {
    id = "i-1234567890abcdef0"
}

```
---

#### Run Terraform Import
- Execute the terraform import command, specifying the resource type and ID:

```sh

terraform import aws_instance.existing_instance i-1234567890abcdef0

```
---
Terraform will then import the existing resource into your configuration and update the state file.

#### Verify the Import

```sh

terraform show

```
---
