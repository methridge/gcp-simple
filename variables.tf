###############################################################################
# variables.tf
#
# Variable definitions
###############################################################################

# Required Variables (no default values)
variable "prefix" {
  type        = string
  description = "Prefix for VM names"
}

# Variables with Defaults
variable "machine_type" {
  type        = string
  description = "Machine type for VMs"
  default     = "f1-micro"
}

variable "node_count" {
  type        = number
  description = "Number of VMs to create"
  default     = 1
}
