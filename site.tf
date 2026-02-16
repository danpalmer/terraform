resource "cloudflare_pages_project" "danpalmer-me" {
  account_id        = var.cloudflare_account_id
  name              = "danpalmer-me"
  production_branch = "master"
  build_config = {
    build_caching   = false
    build_command   = "hugo --minify -b $CF_PAGES_URL"
    destination_dir = "public"
  }
  source = {
    type = "github"
    config = {
      production_deployments_enabled = true
      owner                          = "danpalmer"
      owner_id                       = "202400"
      preview_deployment_setting     = "all"
      production_branch              = "master"
      repo_name                      = "danpalmer.me"
      repo_id                        = "119259629"
      pr_comments_enabled            = true
    }
  }
}
