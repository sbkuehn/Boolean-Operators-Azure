// Author: Shannon Eldridge-Kuehn
// Created: 2025-11-22
// Purpose: Deploy VM only when environment and SKU match criteria.


param environment string
param vmSku string

var isProd = environment == 'prod'
var skuApproved = vmSku == 'Standard_DS2_v2'

resource prodVm 'Microsoft.Compute/virtualMachines@2023-03-01' = if (isProd && skuApproved) {
  name: 'prodVm01'
  location: resourceGroup().location
  properties: {
    hardwareProfile: {
      vmSize: vmSku
    }
  }
}
