resource "aws_amplify_app" "amplify_app" {
  name       = var.app_name
  repository = var.repository
  oauth_token = var.token  
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.amplify_app.id
  branch_name = var.branch_name
}

# resource "aws_amplify_webhook" "master" {
#   app_id      = aws_amplify_app.example.id
#   branch_name = aws_amplify_branch.main.branch_name
#   description = "triggermaster"
# }

resource "aws_amplify_domain_association" "domain_association" {
  app_id      = aws_amplify_app.amplify_app.id
  domain_name = var.domain_name
  wait_for_verification = false

  sub_domain {
    branch_name = aws_amplify_branch.amplify_branch.branch_name
    prefix      = var.branch_name
  }

}