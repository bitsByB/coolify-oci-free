variable "boot_volume_size_in_gbs" {
  description = "The boot volume size in GBs. Max 200 GB for free tier."
  type        = number
  default     = 50 # CHANGE THIS: Use 50 GB for the OS boot volume
}

variable "num_worker_instances" {
  description = "Number of additional worker instances to deploy. The main instance acts as a worker too."
  type        = number
  default     = 0
}

variable "ocpus" {
  description = "The number of OCPUs for the instance. VM.Standard.A1.Flex is free tier eligible."
  type        = number
  default     = 4
}

variable "memory_in_gbs" {
  description = "The memory in GigaBytes for the instance. VM.Standard.A1.Flex is free tier eligible."
  type        = number
  default     = 24
}

variable "instance_image_id" {
  description = "The OCID of the image to use for the instance. (e.g., Ubuntu 24.04 aarch64 LTS Minimal)"
  type        = string
  # No default value - will be selected during deployment
}

variable "instance_shape" {
  description = "The shape of the instance. VM.Standard.A1.Flex is free tier eligible."
  type        = string
  default     = "VM.Standard.A1.Flex"
}

variable "ssh_authorized_keys" {
  description = "SSH public key for instances. For example: ssh-rsa AAEAB3NaC1yc2EAAAA....3xcoeATR ssh-key-2024-09-03"
  type        = string
}

variable "compartment_id" {
  description = "The OCID of the compartment. Find it: Profile - Tenancy: youruser - Tenancy information - OCID (copy) https://cloud.oracle.com/tenancy"
  type        = string
}

variable "availability_domain_main" {
  description = "Availability domain for coolify-main instance. Find it Core Infrastructure → Compute → Instances → Availability domain (left menu). For example: WBJv:EU-FRANKFURT-1-AD-1"
  type        = string
}

Terraform
IGNORE_WHEN_COPYING_START
IGNORE_WHEN_COPYING_END

    
variable "availability_domain_workers" {
  description = "Availability domain for coolify-worker instances. Find it Core Infrastructure → Compute → Instances → Availability domain (left menu). For example: WBJv:EU-FRANKFURT-1-AD-2"
  type        = string
  default     = null
}
