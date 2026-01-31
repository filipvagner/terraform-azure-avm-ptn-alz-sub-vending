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

output "virtual_network_resource_info" {
  value = {
    for k, v in module.virtual_networks : k => {
      vnet_id       = v.resource_id
      vnet_name     = v.name
      address_space = v.address_spaces
      subnets = {
        for k_s, v_s in v.subnets : k_s => {
          subnet_id        = v_s.resource_id
          name             = v_s.name
          address_prefixes = v_s.address_prefixes
        }
      }
    }
  }
}
