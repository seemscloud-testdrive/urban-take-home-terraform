module "firewall" {
  source = "./firewall"

  aaa_cluster_aaa = module.aaa_cluster_aaa.network
}