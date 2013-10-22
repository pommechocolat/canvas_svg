console.log 'début test du module Noeud'

assert = require "assert"
Noeud  = require '../source/javascripts/NoeudVisu.js' 

describe 'Test NoeudVisu : ', ->
  #pere = null
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
    assert.equal 0, 0
  
  it 'le noeud du graphe doit avoir une hauteur de 50 pixel', ->
    console.log("NoeudVisu : "+Noeud.NoeudVisu)
    console.log("NoeudVisu.height = "+Noeud.NoeudVisu.height)
    pere = new Noeud.NoeudVisu
    console.log("pere : "+pere)
    console.log("hauteur pere : "+pere.height)
    assert.equal pere.height, 50
    
  it 'le noeud du graphe doit avoir une position à gauche de 30 pixel', ->
    pere = new Noeud.NoeudVisu
    console.log("position gauche pere : "+pere.leftPos)
    assert.equal pere.leftPos, 30
    
  it 'le noeud du graphe doit avoir une position à gauche de 130 pixel', ->
    fils = new Noeud.NoeudVisu(130, 130, "#F66")
    console.log("position gauche fils : "+fils.leftPos)
    assert.equal fils.leftPos, 130
    assert.equal fils.height, 50
  