Ext.define 'SAjlm.controller.RegionsCtrl',
  extend: 'Ext.app.Controller'
#  stores: ['StoreRegions'] #charge le magasin depuis le dossier store.
  views: ['VueListeRegions', 'FormEditRegion'] #charge le fichier présent dans le dossier view

  init: ->
    #console.log('init ctrl')
    @control
      'viewport > panel': 
       render: @onPanelRendered
      'listeRegions':
        itemdblclick: @editRegion
     'editRegion button[action=Save]':
        click: @updateRegion

  onPanelRendered: ->
    console.log('le Panel a été affiché')
  editRegion: (grid, record) ->
    #console.log('Double click sur '+record.get('NCCENR'))
    view = Ext.widget('editRegion')
    view.down('form').loadRecord(record)
  updateRegion: (button) ->
    #console.log('click sur le bouton Sauvegarder')
    win = button.up('window')
    form = win.down('form')
    record = form.getRecord()
    values = form.getValues()
    record.set(values)
    win.close()
    @getStoreRegionsStore().sync()