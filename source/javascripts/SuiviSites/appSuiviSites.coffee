Ext.application(
  require: ['Ext.container.Viewport']
  name: 'SSudl'
  appFolder: 'javascripts/SuiviSites'
  controllers: [ 'SuiviSitesCtrl']
  launch: ->
    console.log('launch app')
    Ext.create('Ext.container.Viewport'
      layout: 'fit',
      items: [
        xtype: 'listeSites'
      ,
        xtype: 'panel'
        title: 'tests'
        html: 'test'
      #,
      ]
    )
)