# Here you should insert all of your outputs. TIP: use a syntax like below to better organize your Outputs

#------------------------
# Global Outputs
#------------------------

output "my_output" {
  description = "Overuse this field. Descriptions make it easier for the consumer of your code do understand the purpose of you output. \n> TIP: Use `Markdown Language` + `Terraform-docs` and be amazed about how these two resources make your life easier 😉"
  sensitive   = false           # If you marked you variable to be a sensitive value. It's always a good idea to mark this field as well.
  value       = var.my_variable # Here you can define what kind of value your output will receive. You can direct to a Module, Resource, Data Source and even Variables. You may use a for syntax if you are iterating using for_each.
# depends_on  = []              # Does your output rely on other resources to be presented? Use this feature to create an explicit dependecy between configuration blocks.
}

#------------------------
# Networking Outputs
#------------------------

#------------------------
# Compute Outputs
#------------------------

#------------------------
# Database Outputs
#------------------------
