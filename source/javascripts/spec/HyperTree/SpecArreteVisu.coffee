#console.log 'début test du module ArreteVisu'

describe 'Test ArreteVisu : ', ->
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
    expect(0).toEqual 0

  it 'l\'arrete doit exister', ->
    pere = new rjlHyperTree.NoeudVisu
    fils = new rjlHyperTree.NoeudVisu(130, 130, "#F66")
    lg = new rjlHyperTree.ArreteVisu
    console.log("lg : "+lg)
    console.log("lg color : "+lg.lineColor)
    console.log("lg pere height : "+pere.height)
    lg2 = new rjlHyperTree.ArreteVisu(pere, fils)
    console.log("lg2 : "+lg2)
    console.log("lg2.pere : "+lg2.noeud1.getCenterX())
    expect(lg2.noeud1.getCenterX()).toEqual 55
    
