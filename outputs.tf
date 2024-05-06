############################
# outputs.tf
#
# Module outputs
############################

output "public_ip" {
  value       = google_compute_instance.simple_vm[*].network_interface[*].access_config[*].nat_ip
  description = "Public IP address of the VMs"
}
