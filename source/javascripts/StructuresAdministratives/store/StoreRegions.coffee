Ext.define 'SAjlm.store.StoreRegions',
  extend: 'Ext.data.Store'
  fields: ['region', 'NCCENR', 'chefLieu', 'TNCC']
  autoLoad: true
  proxy:
    type: 'jsonp'
    api:
      read: "http://localhost/~metzger9/testPHP/connecteurMySQL.php"
      update: "http://localhost/~metzger9/testPHP/index.php"
    reader:
      type: 'json'
      root: 'results'
    extraParams:
      query: "select * from regions"

