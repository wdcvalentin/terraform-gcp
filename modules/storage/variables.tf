// PROJECT Variables
variable "google_cloudfunctions_function_bucket" {
  default = "gcp-function-terraform-bucket"
}

variable "google_terraform_state_bucket" {
  default = "gcp-terraform-state-1-bucket"
}

variable "region_bucket" {
  default = "EUROPE-WEST1"
}

variable "zone_bucket" {
  default = "EUROPE-WEST1-D"
}

variable google_storage_bucket_object {
 default = "gcp-function-terraform-bucket"
}

variable "region" {
  default = "europe-west1"
}