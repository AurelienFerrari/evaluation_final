output "example_file_path" {
  description = "Chemin du fichier généré par Terraform."
  value       = local_file.example.filename
}
