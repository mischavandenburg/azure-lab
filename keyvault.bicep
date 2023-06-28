// deploy a keyvault

@description('Location of keyvault')
param location string = resourceGroup().location

@description('KeyVault name')
param keyVaultName string

resource keyvault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: subscription().tenantId
    enableRbacAuthorization: true
  }
}
