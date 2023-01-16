
# variable "region" {}

# variable "iam_user_name" {}

variable "user_names" {
  type = list(string)
  #default = ["user1", "user2", "user3"]
}

# variable "user_name_prefix" {}

# variable "iam_user_name" {
#    default           = []
#   description = "List of users to be created in the google workspace"
#   type    = list(object({
#     primary_email = string,
#      family_name = string,
#      give_name = string,
#     disabled = bool
  
#   }))
# }

# variable "iam_policy_name" {}
