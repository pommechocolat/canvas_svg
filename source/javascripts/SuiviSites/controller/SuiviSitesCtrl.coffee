Ext.define 'SSudl.controller.SuiviSitesCtrl',
  extend: 'Ext.app.Controller'
  stores: ['StoreSites'] #charge le magasin depuis le dossier store.
  views: ['ListeSitesVue' ] #, 'FormEditSite'] #charge le fichier présent dans le dossier view
  #console.log('ctrl execution')
  init: ->
    #console.log('init du controleur')
    @control(
      'viewport > panel':
        render: @onPanelRendered
      'listeSites':
        itemdblclick: @editRegion
    )
  onPanelRendered: ->
   console.log('le Panel a été affiché')
  editRegion: (grid, record)->
    console.log('Double click sur '+record.get('NCCENR'))
    view = Ext.widget('editRegion')
    view.down('form').loadRecord(record)