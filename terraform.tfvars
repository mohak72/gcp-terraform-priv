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
gke_cluster_name = "my-existing-gke-cluster"

#PUBSUB
topic_name                 = "my-topic"
subscription_name          = "my-subscription"
ack_deadline_seconds       = 10
message_retention_duration = "604800s"
enable_message_ordering    = false
push_endpoint              = ""
#region                     = "us-central1"

cluster_name       = "my-gke-cluster"
gke_service_account = "my-gke-service-account@my-gcp-project.iam.gserviceaccount.com"
