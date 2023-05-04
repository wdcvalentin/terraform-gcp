# stocker le state de terraform
resource "google_storage_bucket" "state-1" {
  name          = var.google_terraform_state_bucket
  location      = var.region_bucket
  uniform_bucket_level_access = true
  force_destroy=true
}


resource "google_storage_bucket" "function_bucket" {
  name          = var.google_cloudfunctions_function_bucket
  location      = var.region_bucket
  uniform_bucket_level_access = true
  force_destroy=true
}

resource "google_storage_bucket" "input_bucket" {
    name     = "${var.google_cloudfunctions_function_bucket}-input"
    location = var.region
}