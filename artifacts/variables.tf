variable "location" {
  description = "Azure location"
  default     = "Central US"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name for Ace Data Warehouse"
  default     = "rg-deploy-resources"
  type        = string
}

variable "st_blob_name" {
  description = "Storage account Name"
  default     = "tempstorage2132025"
  type        = string
}