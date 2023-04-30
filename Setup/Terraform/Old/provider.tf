# Type terraform then tab twice to get the following:
terraform {
    #start typing the version number and then tab twice to get the following:
    required_version = ">= 0.12.0"
    #start typing the required_providers and then tab twice to get the following:
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.0.0"
        }
        random = {
            source = "hashicorp/random"
            version = ">= 2.0.0"
        }
   }
}
provider "azurerm" {
    features {}
}