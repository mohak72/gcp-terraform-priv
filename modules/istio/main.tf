resource "google_compute_address" "istio_static_ip" {
  name    = var.static_ip_name
  region  = var.region
  project = var.project_id
}

resource "helm_release" "istio_base" {
  name       = "istio-base"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "base"
  namespace  = var.istio_namespace
  create_namespace = true
}

resource "helm_release" "istio_ingress" {
  name       = "istio-ingress"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "gateway"
  namespace  = var.istio_namespace

  values = [
    <<EOF
service:
  type: LoadBalancer
  loadBalancerIP: "${google_compute_address.istio_static_ip.address}"
EOF
  ]
}
