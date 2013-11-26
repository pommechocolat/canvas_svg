# Check that the testing framework works as planned
# On vérifie d'abord que le framework de test fonctionne comme prévu

describe "01_Assertion", ->
  it "tests true as true", ->
    expect(3).toBeTruthy()
    expect(1).toBeTruthy()
    expect(0).not.toBeTruthy()

  it "tests that 1 == 1", ->
    expect(1).toEqual(1)
    
  it "has to be filled by you sometimes", ->
    expect(1).toEqual(1)

describe "02_Variable", ->
  it "is declared with 'var'", ->
    a = 1
    expect(a).toEqual(1)
    
  it "is not scoped by block", ->
    a = 1
    if true
      a = 2
    expect(a).toEqual(2)
    
  it "is scoped by a function - Je ne sais pas écrire la même chose qu'en JS", ->
    a = 1
    f = ->
      a = 2
    f()
    expect(a).toEqual(2)

  it "declared without value is undefined", ->
    a = undefined
    expect(a).toBeUndefined()
    
  it "declared with 'var' is not global", ->
    a = 1
    expect(window.a).toBeUndefined()
    
  it "declared without 'var' is global - Je ne sais pas écrire la même chose qu'en JS", ->
    window.a = 1 #a sans var n'est pas possible en coffee, il faut un context
    expect(window.a).toEqual(1)