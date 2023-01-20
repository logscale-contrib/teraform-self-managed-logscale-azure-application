
variable "name" {
  type = string
  description = "(optional) describe your variable"
}

variable "identifier_uris" {
  type = list(string)
  description = "(optional) describe your variable"
}

variable "sign_in_audience" {
  type = string
  default = "AzureADMyOrg"
  description = "(optional) describe your variable"
}

variable "feature_tags_enterprise" {
  type = bool
  default = true
  description = "(optional) describe your variable"
}

variable "feature_tags_gallery" {
  type = bool
  default = true
  description = "(optional) describe your variable"
}

variable "web_homepage_url" {
  type = string
  description = "(optional) describe your variable"
}

variable "web_logout_url" {
  type = string
  default = null
  description = "(optional) describe your variable"
}
variable "web_redirect_urls" {
  type = list(string)
  default = null
  description = "(optional) describe your variable"
}