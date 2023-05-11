terraform {
  required_version = "1.4.5"

  required_providers {
    spectrocloud = {
      version = "0.13.2"
      source  = "spectrocloud/spectrocloud"
    }
  }
}

provider "spectrocloud" {
  host         = "api.spectrocloud.com"
  project_name = var.spectro_project_name
  api_key      = var.spectro_api_key
  trace        = true
}
