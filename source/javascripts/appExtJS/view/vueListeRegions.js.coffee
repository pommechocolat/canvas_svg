Ext.define('AM.view.vueListeRegions'
  extend: 'Ext.grid.Panel'
  alias: 'widget.listeRegions'
  
  title: 'Toutes les régions'

  initComponent: ->
    @store =
      fields: ['region', 'NCCENR', 'chefLieu', 'TNCC']
      data: [
        {"region":"01","TNCC":"3","NCC":"GUADELOUPE","chefLieu":"97105","NCCENR":"Guadeloupe"},
        {"region":"02","TNCC":"3","NCC":"MARTINIQUE","chefLieu":"97209","NCCENR":"Martinique"}
      ]
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
)