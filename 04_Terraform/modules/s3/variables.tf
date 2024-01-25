variable "bucket_name" {
  description = "The name of the bucket."
  type        = string
}

variable "bucket_acl" {
  description = "The ACL of the bucket."
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "State of versioning (true if enabled)."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
