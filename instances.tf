resource "google_compute_instance" "aus-instance1" {
  name         = "aus-instance1"
  machine_type = "n1-standard-1"
  zone         = "australia-southeast1-a"

  tags = ["networktest-instance","tag-custom-subnet-australia-southeast1-01"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    # network = "${google_compute_network.custom-network.self_link}"

    subnetwork = "${google_compute_subnetwork.custom-subnet-australia-southeast1-01.self_link}"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

resource "google_compute_instance" "euro-instance1" {
  name         = "euro-instance1"
  machine_type = "n1-standard-1"
  zone         = "europe-west1-b"

  tags = ["networktest-instance", "tag-custom-subnet-europe-west1"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    # network = "${google_compute_network.custom-network.self_link}"

    subnetwork = "${google_compute_subnetwork.custom-subnet-europe-west1.self_link}"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}