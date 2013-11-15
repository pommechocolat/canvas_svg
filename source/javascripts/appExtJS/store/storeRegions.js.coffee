Ext.define('AM.store.storeRegions'
  extend: 'Ext.data.Store'
  fields: ['region', 'NCCENR', 'chefLieu', 'TNCC']
  autoLoad: true
  proxy:
    type: 'ajax'
    url: 'data/dataRegion.json'
    reader:
      type: 'json'
      root: 'Regions'
)
