# Sample repo for Random Provider

See [this page](https://registry.terraform.io/providers/hashicorp/random/latest/docs) for the reference


# Prerequisite

Install and configure Terraform as per [official documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

# How To

## Clone the repository

```
git clone https://github.com/dmitryuchuvatov/random.git
```

## Go into the directory

```
cd random
```

## Initialize Terraform

```
terraform init
```

You should see the following output:

```
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/random from the dependency lock file
- Using previously-installed hashicorp/random v3.5.1

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

## Run Terraform Apply

```
terraform apply
```
Enter **yes** and hit **Enter** to apply the changes:

```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # random_string.test will be created
  + resource "random_string" "test" {
      + id               = (known after apply)
      + length           = 16
      + lower            = true
      + min_lower        = 0
      + min_numeric      = 0
      + min_special      = 0
      + min_upper        = 0
      + number           = true
      + numeric          = true
      + override_special = "/@£$"
      + result           = (known after apply)
      + special          = true
      + upper            = true
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + test = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_string.test: Creating...
random_string.test: Creation complete after 0s [id=nys549r54NXkB0iM]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

test = "nys549r54NXkB0iM"
```
## Clean Up

```
terraform destroy
```
When promped, enter **yes** and hit **Enter** to destroy the resources:

```
...

random_string.test: Destroying... [id=nys549r54NXkB0iM]
random_string.test: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.
```


