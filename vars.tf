// General Variables

variable "linux_admin_username" {
  type        = "string"
  description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
}

variable "google_compute_network_name" {
  type        = "string"
  description = "Compute Engine network for the Kubernetes Engine cluster to connect to and use."
}


variable "linux_admin_password" {
  type ="string"
  description = "The password for the Linux admin account."
}

// GCP Variables
variable "gcp_cluster_count" {
  type = "string"
  description = "Count of cluster instances to start."
}

# variable "cluster_name" {
#   type = "string"
#   description = "Cluster name for the GCP Cluster."
# }

variable "project_name" {
  type = "string"
  description = "Project name for the GCP Cluster."
}

variable "region_name" {
  type = "string"
  description = "Region name for the GCP Cluster."
}

variable "region_name_02" {
  type = "string"
  description = "Region name for the GCP Cluster."
}

variable "region_name_03" {
  type = "string"
  description = "Region name for the GCP Cluster."
}

variable "region_name_04" {
  type = "string"
  description = "Region name for the GCP Cluster."
}

variable "region_name_05" {
  type = "string"
  description = "Region name for the GCP Cluster."
}
