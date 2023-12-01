variable "block_public_acls" {
  description = "Whether S3 should block public ACLs for this bucket."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Whether S3 should block public policies for this bucket."
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Whether to delete all objects, including locked, when bucket is destroyed."
  type        = bool
  default     = false
}

variable "ignore_public_acls" {
  description = "Whether S3 should ignore public ACLs for this bucket."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Whether S3 should restrict public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "object_ownership" {
  description = "Object ownership for S3 buckets ownership control rules."
  type        = string
  default     = "BucketOwnerPreferred"

  validation {
    condition     = contains(["BucketOwnerPreferred", "ObjectWriter", "BucketOwnerEnforced"], var.object_ownership)
    error_message = "Object ownership must be one of the following; BucketOwnerPreferred, ObjectWriter or BucketOwnerEnforced."
  }
}
