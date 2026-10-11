data "ovh_iploadbalancing_nat_ips" "iploadbalancing_nat_ips_lookup" {
  for_each = var.iploadbalancing_nat_ips_lookup

  service_name = each.value.service_name
}

