variable "token" {
  type        = string
  description = "github token to connect github repo"
  default     = "${{ secrets.AMPLIFY_TOKEN }}"
}

variable "repository" {
  type        = string
  description = "github repo url"
  default     = "https://github.com/serglit72/amplify-app.git"
}

variable "app_name" {
  type        = string
  description = "AWS Amplify App Name"
  default     = "my-amplify-app"
}

variable "branch_name" {
  type        = string
  description = "AWS Amplify App Repo Branch Name"
  default     = "main"
}


variable "domain_name" {
  type        = string
  default     = "litovchenko.net"
  description = "my own domain name"
}