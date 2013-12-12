#console.log 'début test du module NoeudVisu'

describe 'Test NoeudVisu : ', ->
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
    expect(0).toEqual(0)

  it 'le noeud du graphe doit avoir une hauteur de 50 pixel', ->
#    console.log("NoeudVisu : "+NoeudVisu)
#    console.log("NoeudVisu.height = "+NoeudVisu.height)
    pere = new rjlHyperTree.NoeudVisu
    expect(pere.height).toEqual(50)

  it 'le noeud du graphe doit avoir une position à gauche de 30 pixel', ->
    pere = new rjlHyperTree.NoeudVisu
    expect(pere.left()).toEqual 30

  it 'le noeud du graphe doit avoir une position à gauche de 130 pixel', ->
    fils = new rjlHyperTree.NoeudVisu(155, 155, "#F66")
    expect(fils.left()).toEqual 130
    expect(fils.height).toEqual 50

  it 'le noeud du graphe doit avoir un centre à une position à gauche de 55 pixel', ->
    fils = new rjlHyperTree.NoeudVisu
    expect(fils.getCenterX()).toEqual 55
