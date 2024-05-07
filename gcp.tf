variable "project_id" {
 description = "Google Cloud Platform Project ID"
 default   = "vishnu23"
}
variable "region" {
 description = "Compute Engine region"
 default   = "us-central1"
}
variable "machine_type" {
 description = "Machine type for the Compute Engine instance"
 default   = "e2-standard-2"
}
variable "instance_count" {
    description = "Number of Compute Engine instances to create"
    default ="4"
  
}
resource "google_compute_instance" "my_instance" {
 count = var.instance_count
 name     = "vishnunew-${count.index + 1}"
 machine_type = var.machine_type
 zone     = "us-central1-a"
 project = "vishnu23"
 boot_disk {
  initialize_params {
   image = "debian-11-bullseye-arm64-v20230711"
  }
 } 
 network_interface {
  subnetwork = google_compute_subnetwork.default.self_link
  access_config {
   // Create an external IP for the instance
  }
 }
}
resource "google_compute_network" "default" {
 name  = "mynet12" 
 project = var.project_id
}
resource "google_compute_subnetwork" "default" {
 name     = "mysubnet" 
 ip_cidr_range = "10.0.0.0/24"
 network    = google_compute_network.default.self_link
 region     = var.region
 project    = "vishnu23"
}

output "instance_ip" {
  value = join(", ", [for instance in google_compute_instance.my_instance : instance.network_interface[0].access_config[0].nat_ip])
}
