# Reserve a Static External IP for Istio Ingress
resource "google_compute_address" "istio_static_ip" {
  name    = var.static_ip_name
  region  = var.region
  project = var.project_id
}

# Install Istio Base
resource "helm_release" "istio_base" {
  name       = "istio-base"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "base"
  namespace  = var.istio_namespace
  create_namespace = true
}

# Install Istio Control Plane
resource "helm_release" "istiod" {
  name       = "istiod"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "istiod"
  namespace  = var.istio_namespace
  depends_on = [helm_release.istio_base]
}

# Install Istio Ingress Gateway with Reserved Static IP
resource "helm_release" "istio_gateway" {
  name       = "istio-ingress"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "gateway"
  namespace  = var.istio_namespace
  depends_on = [helm_release.istiod]

  values = [
    <<EOF
service:
  type: LoadBalancer
  loadBalancerIP: "${google_compute_address.istio_static_ip.address}"
EOF
  ]
}
