Ext.define 'SAjlm.view.FormEditRegion',
  extend: 'Ext.window.Window'
  alias: 'widget.editRegion'
  title: 'Edition d\'une région'
  layout: 'fit'
  autoShow: true
  
  initComponent: ->
    @items = [
      xtype: 'form'
      items: [
        xtype: 'textfield'
        name: 'chefLieu'
        fieldLabel: 'Préfecture'
      ,
        xtype: 'textfield'
        name: 'NCCENR'
        fieldLabel: 'Nom'
      ]
    ]
    @buttons = [
      text: 'Sauvegarde'
      action: 'Save'
    ,
      text: 'annuler'
      scope: @
      handler: @.close
    ]
    @callParent(arguments)
