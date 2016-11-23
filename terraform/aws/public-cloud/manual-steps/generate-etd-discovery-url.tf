resource "null_resource" "etcd_discovery_url" {
    provisioner "local-exec" {
        command = "curl -s https://discovery.etcd.io/new?size=${var.masters} > ${var.etcd_discovery_url_file}"
    }

    # This will regenerate the discovery URL if the cluster size changes
    triggers {
        size = "${var.masters}"
    }
}
