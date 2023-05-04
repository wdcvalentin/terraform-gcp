terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
    #   backend "gcs" {
    #     bucket = "gcp-terraform-state-bucket"
    # }
}

provider "google" {
  project = var.my_gcp_project
  region  = var.region
  zone    = var.zone
}

module "storage" {
  source = "./modules/storage"
}

module "cloud_function" {
  source = "./modules/function"
  #    project              = var.project
  #    function_name        = var.function_name
  #    function_entry_point = var.function_entry_point
}
