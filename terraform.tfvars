project_id = "my-gcp-project"
region     = "us-central1"
zone       = "us-central1-a"

# Block Storage
disk_name         = "gke-persistent-disk"
disk_size_gb      = 100
disk_type         = "pd-ssd"
pvc_name          = "gke-pvc"
pvc_storage_class = "standard"

# Istio
static_ip_name   = "istio-ingress-ip"
istio_namespace  = "istio-system"
