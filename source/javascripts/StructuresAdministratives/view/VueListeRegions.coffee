Ext.define 'SAjlm.view.VueListeRegions',
  extend: 'Ext.grid.Panel'
  alias: 'widget.listeRegions'
  
  title: 'Toutes les régions'
  store: 'StoreRegions'
  
  initComponent: ->
    @columns = [
      header: 'N°'
      dataIndex: 'region'
      flex: 1
    ,
      header: 'Nom'
      dataIndex: 'NCCENR'
      flex: 1
    ,
      header: 'Préfecture'
      dataIndex: 'chefLieu'
      flex: 1
    ,
      header: 'TNCC'
      dataIndex: 'TNCC'
      flex: 1
    ]
    @callParent(arguments)
