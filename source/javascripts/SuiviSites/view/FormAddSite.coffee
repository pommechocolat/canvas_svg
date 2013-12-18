Ext.define 'SSudl.view.FormAddSite',
  extend: 'Ext.form.Panel'
  alias: 'widget.addSite'
  
  #store: 'StoreAddSite'
  layout: 'anchor',
  defaults:
    anchor: '100%'
  
  defaultType: 'textfield',
  items: [
    fieldLabel: 'Url forme UL'
    name: 'URL'
    allowBlank: false
  ,
    fieldLabel: 'Code structure'
    name: 'structure'
    allowBlank: true  
  ]
  buttons: [
    text: 'Annuler'
    handler: ->
      @up('form').getForm().reset()
  ,
    text: 'Ajouter'
    #fromBind: true
    #disabled: true
    action: 'AjouterSite'
  ]