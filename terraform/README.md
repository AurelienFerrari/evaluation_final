# Dossier `terraform/`

Scripts Terraform pour la gestion de l’infrastructure as code.

- Exemple : création de VM, DB, réseau…
- Fichier principal : `main.tf`
- Variables : `variables.tf`
- Sorties : `outputs.tf`

Exemple minimal de `main.tf` :
```hcl
provider "local" {}

resource "local_file" "example" {
  content  = "Hello, Terraform!"
  filename = "example.txt"
}
```
