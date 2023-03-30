###############################################################################
# main.tf
#
# Contains resources
###############################################################################
resource "google_compute_instance" "simple_vm" {
  # checkov:skip=CKV_GCP_30: ADD REASON
  # checkov:skip=CKV_GCP_32: ADD REASON
  # checkov:skip=CKV_GCP_38: ADD REASON
  # checkov:skip=CKV_GCP_39: ADD REASON
  # checkov:skip=CKV_GCP_40: ADD REASON
  name         = "simple-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral public IP
    }
  }
}
