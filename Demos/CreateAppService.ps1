#create a powershell script to manually deploy an azure app service with a managed identity
#this script will be used to deploy the app service

#variables
$resourceGroupName = "rg-az204"
$location = "eastus"
$appServicePlanName = "appserviceplan-az204"
$appServiceName = "appservice-az204"
$identityName = "appservice-az204-identity"

#Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

#Create an App Service Plan
New-AzAppServicePlan -Name $appServicePlanName -Location $location -ResourceGroupName $resourceGroupName -Tier Free

#Create an App Service
New-AzWebApp -Name $appServiceName -Location $location -AppServicePlan $appServicePlanName -ResourceGroupName $resourceGroupName

#Create a Managed Identity
$identity = New-AzUserAssignedIdentity -Name $identityName -ResourceGroupName $resourceGroupName

#Assign the Managed Identity to the App Service
$appService = Get-AzWebApp -Name $appServiceName -ResourceGroupName $resourceGroupName

$appService.Identity = $identity

$appService | Set-AzWebApp