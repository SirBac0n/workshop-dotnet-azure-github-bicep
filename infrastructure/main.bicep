@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module appService './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-SirBac0n-${environment}'
    location: 'centralus'
    environment: environment
  }
}
