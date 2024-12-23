terraform {
  backend "gcs" {
    bucket = var.state_bucket
    prefix = "terraform/application-state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
    ko = {
      source  = "ko-build/ko"
      version = "~> 0.0"
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

variable "state_bucket" {
  type        = string
  description = "GCP Bucket to use for terraform state"
}

provider "google" {
  project = var.project
  region  = var.region
}

data "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "kisses"
}

provider "ko" {
  repo = "${var.region}-docker.pkg.dev/${var.project}/${data.google_artifact_registry_repository.repo.name}"
}

resource "ko_build" "kisses" {
  importpath  = "github.com/cmp0st/kisses/server"
  repo        = "${var.region}-docker.pkg.dev/${var.project}/${data.google_artifact_registry_repository.repo.name}/server"
  working_dir = "../../server"
}

data "google_service_account" "kisses" {
  account_id = "kisses"
}

resource "google_cloud_run_v2_service" "kisses" {
  name                = "kisses"
  location            = var.region
  deletion_protection = false
  description         = "kisses backend service"
  ingress             = "INGRESS_TRAFFIC_ALL"

  template {
    execution_environment = "EXECUTION_ENVIRONMENT_GEN2"
    service_account       = data.google_service_account.kisses.email
    containers {
      image = ko_build.kisses.image_ref
      ports {
        name           = "h2c"
        container_port = "8080"
      }
      env {
        name  = "GCP_PROJECT"
        value = var.project
      }
      env {
        name  = "FIRESTORE_DATABASE"
        value = "kisses" # Sad we need to hard code this because there are no firestore data sources in the google provider
      }
    }
  }
}

output "cloud_run_url" {
  value = google_cloud_run_v2_service.kisses.urls
}
