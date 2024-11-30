
resource "aws_athena_database" "this" {
  count         = var.create_database ? 1 : 0
  name          = var.database_name
  bucket        = var.bucket
  force_destroy = var.database_force_destroy



}



# resource "aws_athena_workgroup" "this" {
#   for_each = var.workgroups # Map of workgroup names to output locations
#   name     = each.key       # Use the map key as the workgroup name

#   configuration {
#     enforce_workgroup_configuration    = var.enforce_workgroup_configuration
#     publish_cloudwatch_metrics_enabled = var.publish_cloudwatch_metrics_enabled

#     result_configuration {
#       output_location = each.value # Use the map value as the query output location
#     }
#   }
# }




        