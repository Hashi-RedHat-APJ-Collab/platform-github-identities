# Lookup our GitHub org for teams and memberships
data "github_team" "this" {
  for_each = toset(var.github_teams)
  slug = each.value
}
