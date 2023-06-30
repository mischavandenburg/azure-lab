using './keyvault.bicep'

param keyVaultName = 'kv-mischa-${uniqueString(utcNow())}'
