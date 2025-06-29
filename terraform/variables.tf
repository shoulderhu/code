variable "ami" {
  type        = map(string) 
  description = "AMI"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "STAGE"
  
  validation {
    condition     = contains(["STAGE", "PROD"], var.environment)
    error_message = "The environment must be STAGE or PROD."
  }
}

