variable "cloud9_environment_ec2s" {
  description = <<EOT
Map of cloud9_environment_ec2s, attributes below
Required:
    - image_id
    - instance_type
    - name
Optional:
    - automatic_stop_time_minutes
    - connection_type
    - description
    - owner_arn
    - region
    - subnet_id
    - tags
    - tags_all
EOT

  type = map(object({
    image_id                    = string
    instance_type               = string
    name                        = string
    automatic_stop_time_minutes = optional(number)
    connection_type             = optional(string)
    description                 = optional(string)
    owner_arn                   = optional(string)
    region                      = optional(string)
    subnet_id                   = optional(string)
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud9_environment_ec2s : (
        v.automatic_stop_time_minutes == null || (v.automatic_stop_time_minutes <= 20160)
      )
    ])
    error_message = "must be at most 20160"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud9_environment_ec2s : (
        contains(["amazonlinux-1-x86_64", "amazonlinux-2-x86_64", "amazonlinux-2023-x86_64", "ubuntu-18.04-x86_64", "ubuntu-22.04-x86_64", "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64", "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64", "resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64", "resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64", "resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64"], v.image_id)
      )
    ])
    error_message = "must be one of: amazonlinux-1-x86_64, amazonlinux-2-x86_64, amazonlinux-2023-x86_64, ubuntu-18.04-x86_64, ubuntu-22.04-x86_64, resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64, resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64, resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64, resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64, resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

