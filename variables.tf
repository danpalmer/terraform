variable "CLOUDFLARE_EMAIL" {
  description = "Cloudflare account email"
  type        = string
}

variable "CLOUDFLARE_API_KEY" {
  description = "Cloudflare API key"
  type        = string
  sensitive   = true
}

variable "CLOUDFLARE_ACCOUNT_ID" {
  description = "Cloudflare account ID"
  type        = string
}
