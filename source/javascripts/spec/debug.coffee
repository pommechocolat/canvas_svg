describe "Debug debug", ->
  it "should return boolean: and it's value", ->
    a = true
    #reponse = debug(a)
    expected = "true"
    #console.log(reponse)
    expect(moduleDebug.debug(a)).toEqual expected
    a = false
    expected = "false"
    expect(moduleDebug.debug(a)).toEqual expected

  it "should return number: and it's value", ->
    a = 5
    expected = "5"
    expect(moduleDebug.debug(a)).toEqual expected
    a = 3.5
    expected = "3.5"
    expect(moduleDebug.debug(a)).toEqual expected

  it "should return string: and it's value", ->
    a = "5"
    expected = "5"
    expect(moduleDebug.debug(a)).toEqual expected
    a = "3.5 coucou"
    expected = "3.5 coucou"
    expect(moduleDebug.debug(a)).toEqual expected

  it "should return undefined:", ->
    a = undefined
    expected = "undefined"
    expect(moduleDebug.debug(a)).toEqual expected
    a = "3"
    expected = undefined
    expect(moduleDebug.debug(a)).not.toBe expected

  it "should return function:", ->
    a = ->
      "toto"
    expected = 'function () {...}'
    expect(moduleDebug.debug(a)).toEqual expected
    a = Object
    expected = 'function Object() {...}'
    expect(moduleDebug.debug(a)).toEqual expected

  it "Should print null when value is null", ->
    a = null
    expected = 'null'
    expect(moduleDebug.debug(a)).toEqual expected
    a = @
    #expected = 'null'
    text = moduleDebug.debug(a)
    console.log(text)
    #expect(text).toEqual expected
    console.log("----  this.env  ----------")
    text = moduleDebug.debug(a.env)
    console.log(text)
    console.log("----  this[env]  ----------")
    text = moduleDebug.debug(a["env"])
    console.log(text)
    
    
  