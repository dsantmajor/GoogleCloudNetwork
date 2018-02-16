provider "google" {
  credentials = "${file("/vagrant/code/networktesting-aceb8c290a47.json")}"
  project     = "${var.project_name}"
  region      = "${var.region_name}"
}