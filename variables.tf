variable "resource_group_name" {
  description = "Name of the demo resource group."
  type        = string
  default     = "rg-academic-demo-eastus-20260626"
}

variable "location" {
  description = "Azure region for the demo resource group."
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags applied to the demo resource group."
  type        = map(string)
  default = {
    environment = "demo"
    managed_by  = "terraform"
    pipeline    = "github-tfc-azure"
    project     = "academic-demo"
  }
}
