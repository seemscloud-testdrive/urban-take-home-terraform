locals {
  random = "${var.prefix}${random_string.random.result}"

  aaa_instance_aaa-name   = "${local.random}-${var.aaa_instance_aaa-name}"
  aaa_cluster_aaa-network = "${local.random}-${var.aaa_cluster_aaa-network}"
  aaa_cluster_aaa-name    = "${local.random}-${var.aaa_cluster_aaa-name}"

  aaa_instance_bbb-name = "${local.random}-${var.aaa_instance_bbb-name}"
  aaa_instance_ccc-name = "${local.random}-${var.aaa_instance_ccc-name}"
}