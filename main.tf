data "azuread_client_config" "current" {}
resource "random_uuid" "app_role_admin_id" {}
resource "random_uuid" "app_role_user_id" {}


resource "azuread_application" "app" {
  display_name = var.name

  identifier_uris = var.identifier_uris
  #logo_image       = filebase64("logo.png")
  owners           = [data.azuread_client_config.current.object_id]
  sign_in_audience = "AzureADMultipleOrgs"



  app_role {
    allowed_member_types = ["User"]
    description          = "Admins can manage roles and perform all task actions"
    display_name         = "Admin"
    enabled              = true
    id                   = random_uuid.app_role_admin_id.id
    value                = "admin"
  }

  app_role {
    allowed_member_types = ["User"]
    description          = "ReadOnly roles have limited query access"
    display_name         = "ReadOnly"
    enabled              = true
    id                   = random_uuid.app_role_user_id.id
    value                = "User"
  }

  feature_tags {
    enterprise = var.feature_tags_enterprise
    gallery    = var.feature_tags_gallery
  }

}
