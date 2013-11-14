Ext.application(
  require: ['Ext.container.Viewport']
  name: 'AM'
  launch: ->
    Ext.create('Ext.container.Viewport'
      layout: 'fit',
      items: [
        xtype: 'panel'
        title: 'Régions'
        html: 'la liste des régions va s\'afficher ici'
      ]
    )
)