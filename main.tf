#terraform {
#  required_version = "~>0.12.14"
#}

## project ##
provider "google" {
  project = "hardy-binder-318022"
  region  = "asia-northeast1"
}

## storage buckets ##
## new bucket ##
resource "google_storage_bucket" "private-bucket" {
  name          = "private-bucket-abc123"
  location      = "asia-northeast1"
  storage_class = "REGIONAL"

  labels = {
    app = "test-app"
    env = "test"
  }
}
