resource "github_issue_label" "bar" {
  repository  = "tfaction-demo" # CHANGE
  name        = "bar"
  color       = "FF0000"
  description = "bar"
}
