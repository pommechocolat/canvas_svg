console.log 'début test du module ArreteVisu'

assert = require "assert"
noeud  = require '../source/javascripts/NoeudVisu.js' 
arrete = require '../source/javascripts/ArreteVisu.js' 

describe 'Test ArreteVisu : ', ->
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
    assert.equal 0, 0

  it 'l\'arrete doit exister', ->
    pere = new noeud.NoeudVisu
    fils = new noeud.NoeudVisu(130, 130, "#F66")
    lg = new arrete.ArreteVisu
    console.log("lg : "+lg)
    console.log("lg color : "+lg.lineColor)
    console.log("lg pere height : "+pere.height)
    lg2 = new arrete.ArreteVisu(pere, fils)
    console.log("lg2 : "+lg2)
    console.log("lg2.pere : "+lg2.noeud1.getCenterX())
    assert.equal lg2.noeud1.getCenterX(), 55
    
