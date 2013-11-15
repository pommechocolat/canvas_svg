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
        #title: 'Régions'
        #html: 'la liste des régions va s\'afficher ici'
      ]
    )
)