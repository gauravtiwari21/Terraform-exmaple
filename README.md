# Terraform-Ubuntu_setup_motd
Terraform example to setup ubuntu server with motd update

# Pre-requisites:
1. Should have AWS key and secret available
2. Should have a key pair created in AWS and available locally.
3. Terraform must be installed 

# How to run:
execute run .sh with parameters as follows:

```
Usage: run.sh arguments...
--aws-key       AWS key needed to connect to AWS
--aws-secret    AWS secret
--region        AWS region name for example "us-east-1"
--key-name      AWS key pair needed to conenct over ssh into the instance, THIS MUST BE AVAILABLE IN ADVANCE
--key-path      Loal path to the pem key file for the key pair, this will be used by terraform to run scripts
```


