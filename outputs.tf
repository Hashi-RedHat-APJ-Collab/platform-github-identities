output "github_usernames" {
  value = flatten([
    for team in data.github_team.this : team.members
  ])
}
