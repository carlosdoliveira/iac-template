# Terraform Modules
In this structure all terraform modules are separated in a specific folder, outsite Stack Structures. This makes easier to manage the components that are going to be created. 

## Guidelines
To prepare a new module have in mind that you must:
* Prepare a folder structure using `snake_case` (Eg.: app_gateway, ec2, nat_gateway, etc)
* create at least the following sub-folders:
    * examples
* Your module must have the following files:
    * `.terraform-docs.yml`: Further instructions inside template file;
    * `Makefile`: Further instructions inside template file;
    * `main.tf`: Further instructions inside template file;
    * `variables.tf`: Further instructions inside template file;
    * `versions.tf`: Further instructions inside template file;
    * `outputs.tf`: Further instructions inside template file;
    * `README.md*`: This is created using GNU Make.

## Practices for your coding
### Avoid hard-coded values
Instead, try to use `default` values in your variables. This way, you can both enable your module to be as much customizable as possible and minimize human errors. 
> **Pro-tip**: always have in mind the possible values in the official documentation. If a resource attribute only supports one entry, you **may consider hard-coding it**.

### Avoid interdependency between modules
When you develop a module, the main purpose is to encapsulate a set of resources to facilitate reusage of code. If you create dependencies between resource modules, you add complexity and uncertainty to your code, this is because the way this module approach is used now doesn't allow you to easily lock an specific module version that is compatible with your building logic. 
Therefore, if you need to connect modules to achieve a specific business logic, consider using a **stack**.

### Document your modules during development
As described in `variables.tf` and `outputs.tf`, try to always use the description field for these configuration blocks. It will help you to automate the documentation process of your code because we use `terraform-docs`. For more information regard to the module's template [README.md](./resource_module/README.md) file.

## Want to share more practices?
Contribute to this post by creating a branch and a pull request 😁.