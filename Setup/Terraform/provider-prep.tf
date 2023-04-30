terraform {
    required_version = ">= 0.12.0"
    required_providers {
        azure = {
        source = "hashicorp/azure"
        version = ">= 0.11.0"
        }
        random = {
        source = "hashicorp/random"
        version = ">= 2.0.0"
        }
    }
    
}