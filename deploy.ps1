# Minimal deployment for Azure SQL

## USAGE: 
## Install Az Module: https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-2.8.0
## Configure parameters
## Execute from powershell .\deploy.ps1

$resourceGroupName = "rg-iaas-demo-dev"
$location = "eastus"

$templateFile = $PSScriptRoot + "\templates\template.json"

#Connect-AzAccount

New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile `
    -Mode Incremental
