variable "iploadbalancing_nat_ips_lookup" {
  description = <<EOT
Map of iploadbalancing_nat_ips_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}

