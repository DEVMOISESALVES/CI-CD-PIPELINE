terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

resource "local_file" "devops_log" {
  content  = "Infraestrutura criada pelo Pipeline do Moises! Data: 2025"
  filename = "${path.module}/infra-deploy.txt"
}