console.log 'début test du module draw'

assert = require "assert"
#noeud  = require '../source/javascripts/NoeudVisu.js'
#arrete = require '../source/javascripts/ArreteVisu.js'
#draw   = require '../source/javascripts/draw.js'
fs = require 'fs'

introspection = (obj) ->
  text = 'type: '+typeof obj+' - '
  for props, value of obj
    text=text+props+" : "+value+' ; '
  text

#fs.writeFile 'cs.txt', 'titi', (err) =>
#  console.log 'dans writeFile'

#fs.readFile 'test/data.txt', (err, data) ->
#  console.log 'dans readFile'
#  fileText = data
#  console.log fileText.toString()

fs.readFile 'data/dataRegion.json', (err, data) ->
  console.log 'dans readFile json'
  regions = JSON.parse data
  #console.log introspection regions
  for obj, val of regions
    for obj2, val2 of val
      console.log "val2 : "+introspection val2
  tab = regions.Regions
  console.log "Regions1: "+introspection tab[2]
  for reg in tab
    console.log reg.NCCENR+" "+reg.region

#console.log introspection(assert)


describe 'Test draw : ', ->
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
    assert.equal 0, 0

  #it 'Draw doit avoir un pere', ->
  #  instrospection(assert)