data "archive_file" "source" {
    type        = "zip"
    source_dir  = "./src"
    output_path = "./tmp/function.zip"
}

resource "google_storage_bucket_object" "zip" {
    source       = data.archive_file.source.output_path
    content_type = "application/zip"

    # Append to the MD5 checksum of the files's content
    # to force the zip to be updated as soon as a change occurs
    name         = "src-${data.archive_file.source.output_md5}.zip"
    bucket       = var.google_storage_bucket
}

# Create Cloud Function
resource "google_cloudfunctions_function" "function" {
  name    = var.function_name
  runtime = "python37"

  available_memory_mb   = 128
  source_archive_bucket = var.google_storage_bucket
  source_archive_object = var.google_storage_bucket_object
  trigger_http          = true
  entry_point           = "main"
}
