Ext.define('AM.store.storeRegions'
  extend: 'Ext.data.Store'
  fields: ['region', 'NCCENR', 'chefLieu', 'TNCC']
  autoLoad: true
  proxy:
    type: 'ajax'
    api:
      read: 'data/dataRegion.json'
      update: 'data/updateRegion.json'
    reader:
      type: 'json'
      root: 'Regions'
)
