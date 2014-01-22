Ext.onReady ->
  Ext.create 'Ext.app.Application',
    name: 'SSudl'
    launch: ->
      jasmine.getEnv().addReporter(new jasmine.HtmlReporter())
      jasmine.getEnv().execute()
  