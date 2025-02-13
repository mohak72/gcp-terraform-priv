module "pubsub" {
  source                     = "./modules/pubsub"
  project_id                 = var.project_id
  region                     = var.region
  topic_name                 = var.topic_name
  subscription_name          = var.subscription_name
  ack_deadline_seconds       = var.ack_deadline_seconds
  message_retention_duration = var.message_retention_duration
  enable_message_ordering    = var.enable_message_ordering
  push_endpoint              = var.push_endpoint
}
