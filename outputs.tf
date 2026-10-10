output "cloud9_environment_ec2s_id" {
  description = "Map of id values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud9_environment_ec2s_arn" {
  description = "Map of arn values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloud9_environment_ec2s_automatic_stop_time_minutes" {
  description = "Map of automatic_stop_time_minutes values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.automatic_stop_time_minutes if v.automatic_stop_time_minutes != null }
}
output "cloud9_environment_ec2s_connection_type" {
  description = "Map of connection_type values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.connection_type if v.connection_type != null && length(v.connection_type) > 0 }
}
output "cloud9_environment_ec2s_description" {
  description = "Map of description values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud9_environment_ec2s_image_id" {
  description = "Map of image_id values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "cloud9_environment_ec2s_instance_type" {
  description = "Map of instance_type values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "cloud9_environment_ec2s_name" {
  description = "Map of name values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud9_environment_ec2s_owner_arn" {
  description = "Map of owner_arn values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.owner_arn if v.owner_arn != null && length(v.owner_arn) > 0 }
}
output "cloud9_environment_ec2s_region" {
  description = "Map of region values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud9_environment_ec2s_subnet_id" {
  description = "Map of subnet_id values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "cloud9_environment_ec2s_tags" {
  description = "Map of tags values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloud9_environment_ec2s_tags_all" {
  description = "Map of tags_all values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cloud9_environment_ec2s_type" {
  description = "Map of type values across all cloud9_environment_ec2s, keyed the same as var.cloud9_environment_ec2s"
  value       = { for k, v in aws_cloud9_environment_ec2.cloud9_environment_ec2s : k => v.type if v.type != null && length(v.type) > 0 }
}

