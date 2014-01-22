describe "SuiviSitesCtrl", ->
  #ctrl = null
  
  it "test ok", ->
    expect(true).toBe(true)
#  beforeEach ->
#    ctrl = Application.getController "SuiviSitesCtrl"
    
  it "TabPanel view eixst", ->
    ctrl = Application.getController "SuiviSitesCtrl"
    tab = ctrl.getTabPanel()
    expect(tab).toBeDefined()