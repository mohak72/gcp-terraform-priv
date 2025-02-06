resource "kubernetes_persistent_volume" "gke_pv" {
  metadata {
    name = var.disk_name
  }

  spec {
    capacity {
      storage = "${var.disk_size_gb}Gi"
    }

    access_modes = ["ReadWriteOnce"]
    persistent_volume_reclaim_policy = "Retain"

    gce_persistent_disk {
      pd_name = google_compute_disk.gke_disk.name
      fs_type = "ext4"
    }
  }
}

resource "kubernetes_persistent_volume_claim" "gke_pvc" {
  metadata {
    name = var.pvc_name
  }

  spec {
    access_modes = ["ReadWriteOnce"]

    resources {
      requests {
        storage = "${var.disk_size_gb}Gi"
      }
    }

    storage_class_name = var.pvc_storage_class
  }
}
