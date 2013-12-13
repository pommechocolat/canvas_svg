Ext.define 'SSudl.controller.SuiviSitesCtrl',
  extend: 'Ext.app.Controller'
  stores: ['StoreCompLabo', 'StoreAutresSites'] #charge le magasin depuis le dossier store.
  views: ['TabPanel', 'VueCompLabo', 'VueAutreSites', 'FormEditSite'] #charge le fichier présent dans le dossier view
  models: ['ModelSuiviSites']
  init: ->
    @control
      'viewport > panel':
        render: @onPanelRendered
      'listeCompLabo':
        itemdblclick: @editCompLab
      'listeAutres':
        itemdblclick: @editAutres
      'editSite button[action=Save]':
         click: @updateSite
  onPanelRendered: ->
   console.log('le Panel a été affiché')
  editCompLab: (grid, record)->
    @createVueForm('compLabo', record) 
  editAutres: (grid, record)->
    @createVueForm('autres', record) 
  createVueForm: (origine, record) ->
    view = Ext.widget('editSite')
    view.down('form').jlmorig = origine
    view.down('form').loadRecord(record)
  updateSite: (button) ->
    win = button.up('window')
    form = win.down('form')
    record = form.getRecord()
    values = form.getValues()
    record.set(values)
    win.close()
    if form.jlmorig=='autres'
      console.log('MAJ autres')
      @getStoreAutresSitesStore().sync()
    else
      console.log('MAJ CompLabo')
      @getStoreCompLaboStore().sync()