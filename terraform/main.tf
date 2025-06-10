provider "local" {}

resource "local_file" "example" {
  content  = "Hello, Terraform!"
  filename = "example.txt"
}

# Exemple: pour du cloud réel, remplacer par provider "aws"/"azurerm"/"google" etc.
