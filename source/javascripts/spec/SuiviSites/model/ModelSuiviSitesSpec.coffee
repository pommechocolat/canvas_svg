describe "Test Model SuiviSites", ->
  theApp = null
  beforeEach ->
    Ext.Loader.require 'javascripts.SuiviSites.model.ModelSuiviSites'
    theApp = SSudl.app
  it "test les tests", ->
    expect(true).toBe(true)
    
  it "Application doit exister", ->
    myApp = SSudl.app
    expect(myApp).toBeDefined()
    expect(myApp.name).toEqual('SSudl')

  it "model doit exister", ->
    #Ext.Loader.require 'javascripts.SuiviSites.model.ModelSuiviSites'
    #console.log(moduleDebug.debug(window))
    model = theApp.getModels#("ModelSuiviSites")
    expect(model).toBeDefined()