output "github_usernames" {
  value = flatten([
    for team in data.github_team.this : team.members
  ])
}


# output "github_user_emails" {
#   value = local.team_members_map
# }