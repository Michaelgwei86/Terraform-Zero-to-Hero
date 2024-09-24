# Terraform Debug

Terraform debug is a powerful tool that helps you troubleshoot issues and understand the inner workings of your Terraform configurations. It provides detailed information about the execution process, including:

- *Resource lifecycle*: The stages each resource goes through (create, update, delete).
- *Configuration evaluation*: How Terraform interprets and processes your configuration files.
- *State management*: How Terraform manages and updates the state file.
- *Provider interactions*: How Terraform communicates with the underlying cloud provider.

## Log Levels

Terraform supports the following log levels:

- *TRACE*: Most detailed level, providing information about every action taken by Terraform.
- *DEBUG*: Provides detailed information about the execution process, including internal state and function calls.
- *INFO*: Provides general information about the execution process, such as resource creation, updates, and deletions.
- *WARN*: Indicates potential issues or unexpected behavior that may not prevent the execution from completing successfully.
- *ERROR*: Indicates serious errors that prevent the execution from completing successfully.

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

### Enable Debug Mode with a Specific Log Level
Set the `TF_LOG_LEVE`L environment variable to the desired log level (e.g., `DEBUG`)

```sh

export TF_LOG_LEVEL=DEBUG

```
---

### Run Terraform
Execute the terraform apply command

```sh

terraform apply

```
---

## Specifying the Log File in Terraform Debug

To specify the log file where Terraform debug output will be written, you can use the `TF_LOG_PATH` environment variable. Here's how to set it
```sh

export TF_LOG_PATH=terraform.log

```
---

This will redirect all Terraform debug output to a file named terraform.log in the current working directory. You can customize the filename and location to suit your preferences.