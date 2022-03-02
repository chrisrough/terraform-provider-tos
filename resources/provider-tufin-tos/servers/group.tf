resource "tos_group" "group_1" {
  domain = var.domain
  app    = var.app

  name    = "GROUP_1"
  comment = "GROUP 1 .."

  members = [
    "PLUTO_1",
    "MARS_2",
    "SUB_MARS",
  ]

  tags = merge(
    var.default_tags,
    {
      network_object_SA = format("%s", "GROUP_1")
    })

  depends_on = [
    tos_server.pluto_1,
    tos_server.mars_2,
    tos_subnet.Subnet_mars,
  ]
}
output "group_1" {
  value = tos_group.group_1
}