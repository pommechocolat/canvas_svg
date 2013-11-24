#Ext.require 'Ext.app.Application'

#console.log('on rentre dans SAjlmRunSpec')
#Ext.Loader.setConfig
#  enabled: true

Ext.application
  name: 'SAjlm'
  appFolder: 'javascripts/StructuresAdministratives'
  
  controllers: ['RegionsCtrl']
    
  launch: ->
    console.log('launch SAjlmRunSpec')
    #Application = @
    jasmine.getEnv().addReporter(new jasmine.TrivialReporter())
    jasmine.getEnv().execute()

