# Azure IAAS Demo

## Prerequisites:
- Git
- Visual Studio Code
- Azure Account

Clone this repo:
```
git clone git@github.com:renemedinilla/azure-crs-iaas-demo.git
```

## Nomenclatures

|type|nomenclature|example|
|---|---|---|
|Resource Group|rg-crs-demo||
|Virtual machine|vm-crs-[name]|vm-crs-windows2016|
|Virtual Network|vnet-crs|vnet-crs|

## Steps

1. Create a Vnet using the portal

|parameter|value|
|---|---|
|Name|vnet-crs-demo|
|Address space|192.168.0.0/16|
|Subnet: db|192.168.0.0./24|
|Subnet: web|192.168.1.0./24|
|tag: context|demo|

2. Secure each subnet with firewall rules

nsg-frontend
nsg-backend

3. Provision VM for front end

|parameter|value|
|---|---|
|Image|Windows Server 2019 Datacenter|
|Name|vm-crs-web|
|Size|DS2_V2|
|Disk|Premium SSD|
|Managed disk|Yes|
|Custom Script Extension|install-iis.ps1|
|tag: context|demo|

4. Provision VM for Database

|parameter|value|
|---|---|
|Image|SQL Server 2016 SP1 on Windows Server 2016|
|Name|vm-crs-db|
|Size|DS2_V2|
|Disk|Premium SSD|
|Managed disk|Yes|
|SQL autentication|same user|
|tag: context|demo|

## Automation using ARM templates

To deploy using Powershell you must:

1. Install Powershell Az Module. Link here https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-3.1.0
2. Configure the file `deploy.ps1`
3. Configure the template `template.json`
4. Run the following script on a Powershell terminal:

```
deploy.ps1
```

5. The command will ask you to login, after logged wait until the deployment is completed.