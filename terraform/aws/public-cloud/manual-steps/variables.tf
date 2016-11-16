# these files should be symlinked and pulled out into a separate file from ../main.tf

variable "masters" { default = "3" }
variable "etcd_discovery_url_file" { default = "etcd_discovery_url.txt" }

