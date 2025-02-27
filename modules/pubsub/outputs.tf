output "pubsub_topic_id" {
  description = "The ID of the created Pub/Sub topic"
  value       = google_pubsub_topic.pubsub_topic.id
}

output "pubsub_subscription_id" {
  description = "The ID of the created Pub/Sub subscription"
  value       = google_pubsub_subscription.pubsub_subscription.id
}
