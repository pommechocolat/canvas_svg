class GraphVisu
  # http://flowingdata.com/2012/08/02/how-to-make-an-interactive-network-visualization/
  @noeud1 = new NoeudVisu
  @neoud2 = new NoeudVisu
  @noeud2.leftPos = 130
  @noeud2.topPos = 130
  @noeud2.backgroundColor = "#F66"
  
  drawCanvas ->
    @noeud1.drawCanvas(document.getElementById('canvas'))
    @noeud2.drawCanvas(document.getElementById('canvas'))
    
  drawSvg ->
    @noeud1.drawSvg(document.getElementById('rectangle1_svg'))
    @noeud2.drawSvg(document.getElementById('rectangle2_svg'))
