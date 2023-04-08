variable "azurerm_resource_group" {
    description = "name of the resource group"
    default = "myTFResourceGroup"
    type = string
}

variable "region" {
    description = "region of the resource group"
    default = "eastasia"
    type = string
}

variable "azurerm_storage_account" {
    description = "storage account name"
    default = "storagetung123"
    type = string
}

variable "storage_table" {
    description = "storage table name"
    type = string
    default = "tfstate"
}

variable "tfstate_forlock" {
    description = "lock for tfstate"
    type = string
    default = "tfstateforlock"
}