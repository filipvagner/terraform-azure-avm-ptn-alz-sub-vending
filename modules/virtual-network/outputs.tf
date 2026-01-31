output "resource_id" {
  description = "The created virtual network resource IDs, expressed as a map."
  value = {
    for k, v in module.virtual_networks : k => v.resource_id
  }
}

output "virtual_network_resource_ids" {
  description = "The created virtual network resource IDs, expressed as a map."
  value = {
    for k, v in module.virtual_networks : k => v.resource_id
  }
}

# output "subnets" {
#   description = <<DESCRIPTION
# Information about the subnets created in the module.

# Please refer to the subnet module documentation for details of the outputs
# DESCRIPTION
#   # All subnets now use the subnet module for consistent interface
#   value = module.subnet
# }
