Ext.application(
  require: ['Ext.container.Viewport']
  name: 'AM'
  appFolder: 'javascripts/appExtJS'
  controllers: [ 'Regions']
  launch: ->
    Ext.create('Ext.container.Viewport'
      layout: 'fit',
      items: [
        xtype: 'listeRegions'
      ]
    )
)