Ext.application(
  require: ['Ext.container.Viewport']
  name: 'SAjlm'
  appFolder: 'javascripts/StructuresAdministratives'
  controllers: ['RegionsCtrl']
  launch: ->
    console.log('launch app')
    Ext.create('Ext.container.Viewport'
      layout: 'fit',
      items: [
        xtype: 'listeRegions'
      ]
    )
)