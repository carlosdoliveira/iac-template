# Here you should insert all of your variables. TIP: use a syntax like below to better organize your variables

#------------------------
# Global Variables
#------------------------

variable "my_variable" {
  type        = string # Avoid using double quotes (") to name the type of your variable, this syntax is deprecated.
  description = "Overuse this field. Descriptions make it easier for the consumer of your code do understand the purpose of you variable. \n> TIP: Use `Markdown Language` + `Terraform-docs` and be amazed about how these two resources make your life easier 😉"
  sensitive   = false           # Always mark your variables as senstive if they store senstive data.
  default     = "default_value" # A default value will turn your variable into an optional field. If you omit this value, your variable will become mandatory.
}

#------------------------
# Networking Variables
#------------------------

#------------------------
# Compute Variables
#------------------------

#------------------------
# Database Variables
#------------------------
