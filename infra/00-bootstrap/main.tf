terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

variable "project" {
  type        = string
  description = "GCP project"
}

variable "region" {
  type        = string
  description = "GCP region"
}

provider "google" {
  project = var.project
  region  = var.region
}

resource "google_storage_bucket" "tf_state" {
  name          = format("%s-tf-state", var.project)
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
