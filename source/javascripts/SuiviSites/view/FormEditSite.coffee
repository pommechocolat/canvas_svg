Ext.define 'SSudl.view.FormEditSite',
  extend: 'Ext.window.Window'
  alias: 'widget.editSite'
  title: 'Edition d\'un site'
  autoShow: true
  
  initComponent: ->
    @items = [
      xtype: 'form'
      items: [
        xtype: 'textfield'
        name: 'Directeur'
        fieldLabel: 'Directeur'
      ,
        xtype: 'textfield'
        name: 'realisation'
        fieldLabel: 'Date de Réalisation'
      ,
        xtype: 'textfield'
        name: 'Statut'
        fieldLabel: 'Etat URL UL'
      ,
        xtype: 'textfield'
        name: 'Aspect_UL'
        fieldLabel: 'Etat migration site'
      ,
        xtype: 'textfield'
        name: 'Commentaire'
        fieldLabel: 'Commentaire'
      ]
    ]
    @buttons = [
      text: 'Modifier'
      action: 'Save'
    ,
      text: 'Annuler'
      scope: @
      handler: @close
    ]
    @callParent(arguments)
