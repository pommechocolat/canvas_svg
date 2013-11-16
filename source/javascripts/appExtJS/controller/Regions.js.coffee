Ext.define('AM.controller.Regions'
  extend: 'Ext.app.Controller'
  stores: ['storeRegions'] #charge le magasin depuis le dossier store.
  views: ['vueListeRegions', 'formEditRegion'] #charge le fichier présent dans le dossier view
  
  init: ->
    @control(
      #'viewport > panel': 
      # render: @onPanelRendered
      'listeRegions':
        itemdblclick: @editRegion
      'editRegion button[action=save]':
        click: @updateRegion
    )
    null
  #onPanelRendered: ->
  #  console.log('le Panel a été affiché')
  #  null
  editRegion: (grid, record) ->
    console.log('Double click sur '+record.get('NCCENR'))
    view = Ext.widget('editRegion')
    view.down('form').loadRecord(record)
  updateRegion: (button) ->
    console.log('click sur le bouton Sauvegarder')
)