output "instance_name" {
  description = "Nom de la VM créée."
  value       = google_compute_instance.default.name
}

output "instance_zone" {
  description = "Zone de la VM."
  value       = google_compute_instance.default.zone
}

output "instance_external_ip" {
  description = "Adresse IP externe de la VM."
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}
