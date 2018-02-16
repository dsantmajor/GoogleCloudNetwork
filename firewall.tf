resource "google_compute_firewall" "allow_ssh_subnetworks" {
  name    = "allow-ssh-subnetworks-firewall"
  network = "${google_compute_network.custom-network.name}"

#   allow {
#     protocol = "icmp"
#   }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["tag-custom-subnet-europe-west1", "tag-custom-subnet-australia-southeast1-01"]
}

resource "google_compute_firewall" "allow_ping_subnetworks" {
  name    = "allow-ping-subnetworks-firewall"
  network = "${google_compute_network.custom-network.name}"

  allow {
    protocol = "icmp"
  }

#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
#   }

  source_ranges = ["10.128.0.0/20"]

  target_tags = ["tag-custom-subnet-europe-west1"]
}