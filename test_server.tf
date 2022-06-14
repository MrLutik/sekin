resource "hcloud_server" "web" {
  count       = var.instances
  name        = "test-server-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  #ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "web"
  }
  user_data = file("./config.yaml") # TO BE CHANGED
}