resource "azure_resource_group" "rg" {
  name     = "sravya"
  location = "eastUS"
  tags = {
    environment = "dev"
  }
  

}