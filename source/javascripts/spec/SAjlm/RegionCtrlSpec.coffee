describe 'Basic Assumptions', ->
  it 'should always failed first to be sure the spec is well runned', ->
    expect(true).toBe(true)
    
  it 'has ExtJS4 loaded', ->
    expect(Ext).toBeDefined()
    expect(Ext.getVersion()).toBeTruthy();
    expect(Ext.getVersion().major).toEqual(4)

  it 'has loaded SAjlm code', ->
    expect(SAjlm).toBeDefined();
#describe('Spécification de RegionCtrl', ->
#  #testSAjlm = {}
#  it('should exist', ->
#    #console.log("entre dans le test should exist")
#  )
