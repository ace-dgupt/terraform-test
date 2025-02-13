locals {
  # -----------------------------------------------------------------------------
  # Assemble variables into a list of tags to be assigned to Azure resources.
  # -----------------------------------------------------------------------------
  tags = {
    App            = var.App
    App_Owner      = var.App_Owner
    Business_Owner = var.Business_Owner
    Environment    = var.Environment
  }
}