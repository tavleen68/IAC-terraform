
// Athena
variable "bucket" {}
variable "create_database" {
  type        = bool
  default     = true
  description = "A boolean that indicates if the new database should be created."
}

variable "database_name" {
  type        = string
  default     = null
  description = "Name of the existing database. Required if create_database variable is false"
}



variable "database_force_destroy" {
  type        = bool
  default     = false
  description = "A boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are not recoverable."
}




# variable "enforce_workgroup_configuration" {
#   type        = string
#   default     = true
#   description = "(Optional) Boolean whether the settings for the workgroup override client-side settings. "
# }
# variable "publish_cloudwatch_metrics_enabled" {
#   type        = string
#   default     = true
#   description = "(Optional) Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to true."
# }

# variable "workgroups" {
#   description = "Map of Athena workgroup names and their corresponding S3 output locations"
#   type        = map(string)
#   default     = null
# }
