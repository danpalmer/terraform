resource "cloudflare_pages_project" "danpalmer-me" {
  account_id        = var.CLOUDFLARE_ACCOUNT_ID
  name              = "danpalmer-me"
  production_branch = "master"
  build_config = {
    build_caching   = false
    build_command   = "hugo --minify -b $CF_PAGES_URL"
    destination_dir = "public"
    root_dir        = ""
  }
  source = {
    type = "github"
    config = {
      owner             = "danpalmer"
      owner_id          = "202400"
      repo_name         = "danpalmer.me"
      repo_id           = "119259629"
      production_branch = "master"

      production_deployments_enabled = true
      preview_deployment_setting     = "all"
      pr_comments_enabled            = true
      path_includes                  = ["*"]
      preview_branch_includes        = ["*"]
    }
  }
}

resource "cloudflare_zero_trust_organization" "danpalmer-team" {
  account_id      = var.CLOUDFLARE_ACCOUNT_ID
  name            = "Dan Palmer"
  auth_domain     = "danpalmer.cloudflareaccess.com"
  is_ui_read_only = true
}
