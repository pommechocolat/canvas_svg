Ext.define('AM.controller.Regions'
  extend: 'Ext.app.Controller'
  stores: ['storeRegions'] #charge le magasin depuis le dossier store.
  views: ['vueListeRegions'] #charge le fichier présent dans le dossier view
  
  init: ->
    @control(
      #'viewport > panel': 
      # render: @onPanelRendered
      'listeRegions':
        itemdblclick: @editRegion
    )
    null
  #onPanelRendered: ->
  #  console.log('le Panel a été affiché')
  #  null
  editRegion: (grid, record)->
    console.log('Double click sur '+record.get('NCCENR'))
    null
)