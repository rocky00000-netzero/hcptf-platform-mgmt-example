terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "~> 0.65.0"
    }
  }
}

provider "tfe" {}

module "random_pets_1_project" {
  source  = "alexbasista/projecter/tfe"
  version = "0.1.1"

  organization = var.organization
  project_name = "random-pets-1-application"

  team_access = {
    terraform-platform-team = "admin"
    random-pets-app-team    = "write"
  }
}

module "random_pets_2_project" {
  source  = "alexbasista/projecter/tfe"
  version = "0.1.1"

  organization = var.organization
  project_name = "random-pets-2-application"

  team_access = {
    terraform-platform-team = "admin"
    random-pets-app-team    = "write"
  }
}