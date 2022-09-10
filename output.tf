output "aaa_cluster_aaa-bastion-address" {
  value = module.aaa_cluster_aaa.bastion_address.address
}

output "aaa_cluster_aaa-static_ips" {
  value = module.aaa_cluster_aaa.statics_ips[*].address
}