resource "google_notebooks_instance" "instance" {
  provider = google-beta
  name = "kfp-notebooks-instance-terraform"
  location = "us-west1-a"
  machine_type = "n1-standard-1"
  metadata = {
    proxy-mode = "service_account"
    terraform  = "true"
  }
  container_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
    tag = "latest"
  }
}