resource "google_app_engine_application" "app" {
  project     = "lab-devops-cloud-6aso-g26"
  location_id = "us-east"
}

resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta

  location = "us-east1"
  repository_id = "labdevops"
  description = "Imagens Docker"
  format = "DOCKER"
}