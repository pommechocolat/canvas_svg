Ext.application(
  require: ['Ext.container.Viewport']
  name: 'SSudl'
  appFolder: 'javascripts/SuiviSites'
  controllers: [ 'SuiviSitesCtrl']
  #console.log('app execution')
  launch: ->
    console.log('launch app')
    Ext.create('Ext.container.Viewport'
      layout: 'fit',
      items: [
        xtype: 'panel'
        title: 'tests'
        html: 'test'
      #,
      #  xtype: 'listeSites'
      ]
    )
)