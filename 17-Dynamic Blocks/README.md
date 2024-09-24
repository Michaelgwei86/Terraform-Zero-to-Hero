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

