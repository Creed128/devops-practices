variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "bucket_acl" {
  description = "The ACL of the S3 bucket."
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "State of versioning (true if enabled)."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

variable "expiration_days" {
  description = "Number of days after which to expunge the objects."
  type        = number
  default     = 30
}
