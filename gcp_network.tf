resource "google_compute_network" "custom-network" {
  name                    = "${var.google_compute_network_name}"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "custom-subnet-australia-southeast1-01" {
  name          = "custom-subnet-australia-southeast1-01"
  ip_cidr_range = "10.128.0.0/20"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name}"
}

resource "google_compute_subnetwork" "custom-subnet-europe-west1" {
  name          = "custom-subnet-europe-west1"
  ip_cidr_range = "10.132.0.0/20"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_04}"
}

resource "google_compute_subnetwork" "custom-subnet-asia-east1" {
  name          = "custom-subnet-asia-east1"
  ip_cidr_range = "10.140.0.0/20"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_02}"
}

resource "google_compute_subnetwork" "custom-subnet-us-east1-rack1" {
  name          = "custom-subnet-us-east1-rack1"
  ip_cidr_range = "10.0.1.0/24"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_03}"
}

resource "google_compute_subnetwork" "custom-subnet-us-east1-rack2" {
  name          = "custom-subnet-us-east1-rack2"
  ip_cidr_range = "10.0.2.0/24"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_03}"
}

resource "google_compute_subnetwork" "custom-subnet-us-east1-rack3" {
  name          = "custom-subnet-us-east1-rack3"
  ip_cidr_range = "10.0.3.0/24"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_03}"
}

resource "google_compute_subnetwork" "custom-subnet-us-east1-rack4" {
  name          = "custom-subnet-us-east1-rack4"
  ip_cidr_range = "10.0.4.0/24"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_03}"
}

resource "google_compute_subnetwork" "custom-subnet-us-east1-rack5" {
  name          = "custom-subnet-us-east1-rack5"
  ip_cidr_range = "10.0.5.0/24"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_03}"
}

resource "google_compute_subnetwork" "custom-subnet-us-east1-rack6" {
  name          = "custom-subnet-us-east1-rack6"
  ip_cidr_range = "10.0.6.0/24"
  network       = "${google_compute_network.custom-network.self_link}"
  region        = "${var.region_name_03}"
}