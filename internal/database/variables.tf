variable "username" {
  type        = string
  description = "The username for the database user"
  #  validation {
  #    condition     = length(var.username) > 12
  #    error_message = "The username must be 12 characters or less"
  #  }
}

variable "database" {
  type        = string
  description = "The name of the database"
  #  validation {
  #    condition     = length(var.database) > 12
  #    error_message = "The username must be 12 characters or less"
  #  }
  default = ""
}

variable "host" {
  type    = string
  default = "%.mde.utc"
}
