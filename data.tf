###############################################################################
# data.tf
#
# Contains any data sources
###############################################################################

data "google_compute_image" "ubuntu_image" {
  family  = "ubuntu-2404"
  project = "ubuntu-os-cloud"
}
