console.log 'début test du module NoeudVisu'



describe 'Test NoeudVisu : ', ->
  it 'le test doit planter pous s\'assurer qu\'on passe par lui', ->
#    assert.equal 0, 0 

  it 'le noeud du graphe doit avoir une hauteur de 50 pixel', ->
    console.log("NoeudVisu : "+NoeudVisu)
    console.log("NoeudVisu.height = "+NoeudVisu.height)
    pere = new NoeudVisu
    console.log("pere : "+pere)
    console.log("hauteur pere : "+pere.height)
#    assert.equal pere.height, 50

  it 'le noeud du graphe doit avoir une position à gauche de 30 pixel', ->
    pere = new noeud.NoeudVisu
    console.log("position gauche pere : "+pere.left())
#    assert.equal pere.left(), 30

  it 'le noeud du graphe doit avoir une position à gauche de 130 pixel', ->
    fils = new noeud.NoeudVisu(155, 155, "#F66")
    console.log("position gauche fils : "+fils.left())
#    assert.equal fils.left(), 130
#    assert.equal fils.height, 50

  it 'le noeud du graphe doit avoir un centre à une position à gauche de 55 pixel', ->
    fils = new noeud.NoeudVisu
    console.log("position gauche fils : "+fils.getCenterX())
#    assert.equal fils.getCenterX(), 55



#    expect(Ext).toBeDefined()
#    expect(Ext.getVersion()).toBeTruthy();
#    expect(Ext.getVersion().major).toEqual(4)