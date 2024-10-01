# Terraform Taints

Terraform taint is a feature that allows you to manually mark a resource as tainted. When a resource is tainted, Terraform will not automatically destroy it, even if it's marked for destruction. This can be useful in scenarios where you want to manually intervene before a resource is deleted.

## Why use taint 
- *Manual Intervention*: Taint gives you control over the lifecycle of a resource, allowing you to perform manual tasks before it's destroyed.
- *Debugging*: If you're encountering issues with a resource, tainting it can prevent accidental deletion while you investigate.
- *Temporary Preservation*: You can use taint to temporarily preserve a resource for testing or other purposes.

## Tainting and Untainting Resources

To taint a resource, use the `terraform taint` command:
```sh

terraform taint <resource_type>.<resource_name>

```
---

To untaint a resource, use the `terraform untaint` command:

```sh

terraform untaint <resource_type>.<resource_name>

```
---


Tainting a resource will not prevent Terraform from applying changes to its configuration. However, it will prevent Terraform from automatically destroying it.

### Example: Tainting an EC2 Instance

```sh

resource "aws_instance" "example" {
  # ... other configuration
}

```
---

To taint this instance:

```sh

terraform taint aws_instance.example

```
---

Now, if you run `terraform destroy`, the instance will not be deleted unless you first `untaint` it.
