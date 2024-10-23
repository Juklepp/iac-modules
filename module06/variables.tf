variable "location" {
  type = string
  description = "Location of the resources"
  default = "westeurope"
}

variable "rg_name" {
  type = string
  description = "Name of the resource group"
  default = "rg-web"
}

variable "sa_name" {
  type = string
  description = "Name of the storage account"
  default = "saweb"
}

variable "source_content" {
  type = string
  description = "Content of the index.html file"
  default = "<h1>Made with Terraform :O zzzz</h1>"
}

variable "index_document" {
  type = string
  description = "Name of the index document"
  default = "index.html"
}