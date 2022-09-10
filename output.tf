output "aaa_cluster_aaa-vpn_address" {
  value = module.vpn.vpn_address.address
}

output "aaa_cluster_aaa-static_ips" {
  value = module.aaa_cluster_aaa.statics_ips[*].address
}