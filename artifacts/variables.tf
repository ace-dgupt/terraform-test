variable "location" {
  description = "Azure location"
  default     = "Central US"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name for Ace Data Warehouse"
  default     = "rg-adw-np"
  type        = string
}

variable "st_adls_name" {
  description = "Storage account Name"
  default     = "stadwnp"
  type        = string
}