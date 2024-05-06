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
  count        = var.node_count
  name         = "${var.prefix}-${count.index}"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = data.google_compute_image.ubuntu_image.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral public IP
    }
  }
}
