variable "description" {
  description = "Description of the eventbridge eventbus."
  type        = string
}

variable "event_pattern" {
  description = "JSON event pattern for the event rule."
  type        = string
}

variable "eventbus_name" {
  description = "Name of the eventbridge eventbus."
  type        = string
}

variable "target_arn" {
  description = "ARN of the eventbridge target."
  type        = string
}

variable "target_id" {
  description = "Unique ID of eventbridge target, will be generated if missing."
  type        = string
  default     = null
}
