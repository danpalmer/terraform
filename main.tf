terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

provider "cloudflare" {
  email     = var.CLOUDFLARE_EMAIL
  api_token = var.CLOUDFLARE_API_KEY
}
