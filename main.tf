terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "4.53.0"
        }
    }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "instances" {
  source     = "./modules/instances"
}

//terraform import modules.instances.google_compute_instance.tf_instance_1 6204369395071124465
