terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.65.0"
    }
  }
  backend "local" {
  }
}

provider "google" {
  alias   = "impersonating"
  region  = var.region
  project = var.project_id
  zone    = var.region
}

provider "google" {
  region  = var.region
  project = var.project_id
  zone    = var.region
  access_token = data.google_service_account_access_token.default.access_token
}
