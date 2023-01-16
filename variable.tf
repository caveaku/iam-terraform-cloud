variable "region" {
  description = "Provide region for the IAM user"
  type        = string
}

variable "user_name" {
  description = "Provide the required name for the newly created IAM user"
  type        = string
}

variable "iam_policy_name" {
  description = "Provide the required name for the newly created IAM policy"
  type        = string
}
