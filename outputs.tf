output "iploadbalancing_nat_ips_lookup_nat_ips" {
  description = "Map of nat_ips values across all iploadbalancing_nat_ips_lookup, keyed the same as var.iploadbalancing_nat_ips_lookup except keys with no nat_ips are omitted"
  value       = { for k, v in data.ovh_iploadbalancing_nat_ips.iploadbalancing_nat_ips_lookup : k => v.nat_ips if v.nat_ips != null && length(v.nat_ips) > 0 }
}
output "iploadbalancing_nat_ips_lookup_service_name" {
  description = "Map of service_name values across all iploadbalancing_nat_ips_lookup, keyed the same as var.iploadbalancing_nat_ips_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_iploadbalancing_nat_ips.iploadbalancing_nat_ips_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

