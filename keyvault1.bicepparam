using './keyvault.bicep'

param keyVaultName = 'kv-mischa-${uniqueString($(Build.BuildId))}'
