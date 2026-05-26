variable "topic_arn" {
  description = "ARN of the SNS topic"
  type        = string
  validation {
    condition     = length(var.topic_arn) > 0
    error_message = "topic_arn must not be empty."
  }
}

variable "policy" {
  description = "JSON policy document"
  type        = string
  validation {
    condition     = length(var.policy) > 0
    error_message = "policy must not be empty."
  }
}
