terraform {
  backend "gcs" {
    bucket = var.state_bucket
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
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

resource "google_artifact_registry_repository" "kisses" {
  location      = var.region
  repository_id = "kisses"
  description   = "Kisses Images"
  format        = "DOCKER"

  docker_config {
    immutable_tags = false
  }
}

resource "google_firestore_database" "store" {
  name        = "kisses"
  location_id = var.region # Regional only for lower cost
  type        = "FIRESTORE_NATIVE"

  concurrency_mode            = "OPTIMISTIC" # yolo
  app_engine_integration_mode = "DISABLED"
  deletion_policy             = "DELETE" # nerf the data on `tofu destroy`
}

resource "google_service_account" "kisses" {
  account_id   = "kisses"
  display_name = "Kisses Cloud Run service account"
}

resource "google_project_iam_member" "firestore_user" {
  project = var.project
  role    = "roles/datastore.user"
  member  = "serviceAccount:${google_service_account.kisses.email}"
  condition {
    title      = "Restrict to kisses database"
    expression = "resource.service == 'firestore.googleapis.com' && resource.name == 'projects/${var.project}/databases/${google_firestore_database.store.name}'"
  }
}
