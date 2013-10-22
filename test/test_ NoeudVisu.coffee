console.log 'début test du module NoeudVisu'

assert = require "assert"
noeud  = require '../source/javascripts/NoeudVisu.js' 

describe 'Test NoeudVisu : ', ->
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
    assert.equal 0, 0

  it 'le noeud du graphe doit avoir une hauteur de 50 pixel', ->
    console.log("NoeudVisu : "+noeud.NoeudVisu)
    console.log("NoeudVisu.height = "+noeud.NoeudVisu.height)
    pere = new noeud.NoeudVisu
    console.log("pere : "+pere)
    console.log("hauteur pere : "+pere.height)
    assert.equal pere.height, 50

  it 'le noeud du graphe doit avoir une position à gauche de 30 pixel', ->
    pere = new noeud.NoeudVisu
    console.log("position gauche pere : "+pere.leftPos)
    assert.equal pere.leftPos, 30

  it 'le noeud du graphe doit avoir une position à gauche de 130 pixel', ->
    fils = new noeud.NoeudVisu(130, 130, "#F66")
    console.log("position gauche fils : "+fils.leftPos)
    assert.equal fils.leftPos, 130
    assert.equal fils.height, 50

  it 'le noeud du graphe doit avoir un centre à une position à gauche de 55 pixel', ->
    fils = new noeud.NoeudVisu
    console.log("position gauche fils : "+fils.getCenterX())
    assert.equal fils.getCenterX(), 55
