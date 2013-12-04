Ext.define 'SSudl.controller.SuiviSitesCtrl',
  extend: 'Ext.app.Controller'
  stores: ['StoreCompLabo', 'StoreAutresSites'] #charge le magasin depuis le dossier store.
  views: ['TabPanel', 'VueCompLabo', 'VueAutreSites', 'FormEditSite'] #charge le fichier présent dans le dossier view
  init: ->
    @control(
      'viewport > panel':
        render: @onPanelRendered
      'listeCompLabo':
        itemdblclick: @editCompLab
      'listeAutres':
        itemdblclick: @editAutres
      'editSite button[action=Save]':
         click: @updateRegion
      
    )
  onPanelRendered: ->
   console.log('le Panel a été affiché')
  editCompLab: (grid, record)->
    console.log('Double click sur '+record.get('supannCodeEntite'))
    view = Ext.widget('editSite')
    view.down('form').loadRecord(record)
  editAutres: (grid, record)->
    console.log('Double click sur '+record)
    view = Ext.widget('editSite')
    view.down('form').loadRecord(record)
  updateRegion: (button) ->
    console.log('click sur le bouton Sauvegarder')
    win = button.up('window')
    form = win.down('form')
    record = form.getRecord()
    values = form.getValues()
    record.set(values)
    win.close()
    @getStoreCompLaboStore().sync()