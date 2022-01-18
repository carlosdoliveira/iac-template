# Your module Documentation
This area is where you can use as a header for *terraform-docs*.
After preparing your module, you can then use terraform-docs to automate the README file.

## Requirements

No requirements.

# Examples
Use the examples folder and add as many examples you want. have in mind that you must use the following syntax to see each file content:


``` hcl
# Insert all examples you might have in multiple files
resource "azurerm_resource_group" "rg" {
  name     = "testing_rg"
  location = "eastus2"
}

```

If you need to create more examples create new `include` blocks

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_my_variable"></a> [my\_variable](#input\_my\_variable) | Overuse this field. Descriptions make it easier for the consumer of your code do understand the purpose of you variable. <br>> TIP: Use `Markdown Language` + `Terraform-docs` and be amazed about how these two resources make your life easier 😉 | `string` | `"default_value"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_my_output"></a> [my\_output](#output\_my\_output) | Overuse this field. Descriptions make it easier for the consumer of your code do understand the purpose of you output. <br>> TIP: Use `Markdown Language` + `Terraform-docs` and be amazed about how these two resources make your life easier 😉 |

## Resources

No resources.

## How to create a documentation for the environent
To create a README file simply use the command:
``` shell
make prepare-readme
```

## Wish to contribute?

You must install [**terraform-docs**](https://terraform-docs.io/user-guide/installation/).
Steps:
* Clone this reop;
* Create a branch;
* Make all modifications you want;
* Create a documentation `make prepare-readme`;
* Commit your changes;
* Create a tag (v1.1.0, v1.2.3, etc), push your branch and raise a Pull Request.

<sub>For any questions simply reach me: [carlos.oliveira@softwareone.com](mailto:carlos.oliveira@softwareone.com)</sub>

