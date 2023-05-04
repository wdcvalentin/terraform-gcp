// PROJECT Variables
variable "my_gcp_project" {
  default = "tf-gcp-wachedecorbie-valentin"
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-d"
}

variable "public_key" {
  default = "Your_Public_Key_in_RSA_Format"
}

variable "project" {
    default= "tf-gcp-wachedecorbie-valentin"
}
variable "function_name" {
    default= "my-function"
}
variable "function_entry_point" {
    default= "app"
}