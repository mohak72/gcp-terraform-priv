resource "kubernetes_storage_class" "filestore-sc" {
  metadata {
    name = "filestore-sc"
  }

  provisioner = "kubernetes.io/no-provisioner"
  parameters = {
    type = "nfs"
  }

  mount_options = ["hard", "nfsvers=4.1"]
  reclaim_policy = "Retain"
  volume_binding_mode = "Immediate"
}

resource "kubernetes_persistent_volume" "filestore-pv" {
  metadata {
    name = "filestore-pv"
  }

  spec {
    capacity {
      storage = "${var.filestore_capacity}Gi"
    }
    access_modes       = ["ReadWriteMany"]
    persistent_volume_reclaim_policy = "Retain"

    nfs {
      path = "/vol1"
      server = var.filestore_ip
    }
  }
}

resource "kubernetes_persistent_volume_claim" "filestore-pvc" {
  metadata {
    name = "filestore-pvc"
  }

  spec {
    access_modes = ["ReadWriteMany"]
    resources {
      requests {
        storage = "${var.filestore_capacity}Gi"
      }
    }
    volume_name = kubernetes_persistent_volume.filestore-pv.metadata[0].name
  }
}
