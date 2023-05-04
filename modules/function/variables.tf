variable google_storage_bucket_object {
 default = "gcp-function-terraform-bucket"
}

variable "google_storage_bucket" {
  default = "gcp-function-terraform-bucket"
}

variable "project" {
    default= "tf-gcp-wachedecorbie-valentin"
}
variable "function_name" {
    default= "function-python-request"
}
variable "function_entry_point" {
    default= "app"
}