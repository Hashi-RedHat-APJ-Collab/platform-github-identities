# Lookup our GitHub org for teams and memberships
data "github_team" "this" {
  for_each = toset(var.github_teams)
  slug = each.value
}


# Get the email address of each user in the team

# majority of users don't have email addresses set in GitHub so skipping this

# data "github_user" "team_members" {
#   for_each = {
#     for member in flatten([
#       for team_name, team in data.github_team.this : [
#         for username in team.members : {
#           team_name = team_name
#           username  = username
#         }
#       ]
#     ]) : "${member.team_name}:${member.username}" => member.username
#   }
#   username = each.value
# }

# # Create a map of team members with their details
# locals {
#   team_members_map = {
#     for key, user in data.github_user.team_members : key => {
#       username = user.username
#       email    = user.email
#       name     = user.name
#       team     = split(":", key)[0]
#     }
#   }
# }
