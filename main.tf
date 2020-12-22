#set the provider
provider "hcloud" {
  token = var.hcloud_token
}

#create master vm
resource "hcloud_server" "c1-master1" {
  name = "c1-master1"
  image = "ubuntu-16.04"
  server_type = "cpx11"
  location = "nbg1"
}

#create nodes
resource "hcloud_server" "c1-node1" {
  name = "c1-node1"
  image = "ubuntu-16.04"
  server_type = "cpx11"
  location = "nbg1"
}

resource "hcloud_server" "c1-node2" {
  name = "c1-node2"
  image = "ubuntu-16.04"
  server_type = "cpx11"
  location = "nbg1"
}