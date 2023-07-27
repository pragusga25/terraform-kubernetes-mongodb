variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment in which the infrastructure is being deployed (e.g., production, staging, development)"
  type        = string
  default     = "test"
}

variable "gcp_gsa_backup_name" {
  description = "Google Cloud Service Account name for backup"
  type        = string
  default     = "mongo-backup"
}

variable "gcp_ksa_backup_name" {
  description = "Google Kubernetes Service Account name for backup"
  type        = string
  default     = "sa-mongo-backup"
}

variable "gcp_gsa_restore_name" {
  description = "Google Cloud Service Account name for restore"
  type        = string
  default     = "mongo-restore"
}

variable "gcp_ksa_restore_name" {
  description = "Google Kubernetes Service Account name for restore"
  type        = string
  default     = "sa-mongo-restore"
}

variable "root_password" {
  description = "Root user password for MySQL"
  type        = string
}

variable "metric_exporter_pasword" {
  description = "Password for the mongo_exporter user"
  type        = string
}

variable "mongodb_config" {
  type = any
  default = {
    name               = ""
    environment        = ""
    volume_size        = ""
    architecture       = ""
    replica_count      = 2
    values_yaml        = ""
    storage_class_name = ""
  }
  description = "Specify the configuration settings for Mongodb, including the name, environment, storage options, replication settings, and custom YAML values."
}
