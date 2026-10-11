output "compute_region_url_maps_id" {
  description = "Map of id values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no id are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_url_maps_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_region_url_maps_default_route_action" {
  description = "Map of default_route_action values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no default_route_action are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => one(v.default_route_action) if v.default_route_action != null && length(v.default_route_action) > 0 }
}
output "compute_region_url_maps_default_service" {
  description = "Map of default_service values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no default_service are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.default_service if v.default_service != null && length(v.default_service) > 0 }
}
output "compute_region_url_maps_default_url_redirect" {
  description = "Map of default_url_redirect values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no default_url_redirect are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => one(v.default_url_redirect) if v.default_url_redirect != null && length(v.default_url_redirect) > 0 }
}
output "compute_region_url_maps_deletion_policy" {
  description = "Map of deletion_policy values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_region_url_maps_description" {
  description = "Map of description values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no description are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_region_url_maps_fingerprint" {
  description = "Map of fingerprint values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no fingerprint are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "compute_region_url_maps_header_action" {
  description = "Map of header_action values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no header_action are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => one(v.header_action) if v.header_action != null && length(v.header_action) > 0 }
}
output "compute_region_url_maps_host_rule" {
  description = "Map of host_rule values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no host_rule are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.host_rule if v.host_rule != null && length(v.host_rule) > 0 }
}
output "compute_region_url_maps_map_id" {
  description = "Map of map_id values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no map_id are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.map_id if v.map_id != null }
}
output "compute_region_url_maps_name" {
  description = "Map of name values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no name are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_region_url_maps_path_matcher" {
  description = "Map of path_matcher values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no path_matcher are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.path_matcher if v.path_matcher != null && length(v.path_matcher) > 0 }
}
output "compute_region_url_maps_project" {
  description = "Map of project values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no project are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_url_maps_region" {
  description = "Map of region values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no region are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_url_maps_self_link" {
  description = "Map of self_link values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no self_link are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_region_url_maps_test" {
  description = "Map of test values across all compute_region_url_maps, keyed the same as var.compute_region_url_maps except keys with no test are omitted"
  value       = { for k, v in google_compute_region_url_map.compute_region_url_maps : k => v.test if v.test != null && length(v.test) > 0 }
}

