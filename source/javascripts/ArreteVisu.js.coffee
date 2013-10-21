class ArreteVisu
  @lineColor = "green"
  @lineWidth = 1
  
  @noeud1 = nil
  @noeud2 = nil
  
  
  drawCanvas (canvas) ->
    contexte = canvas.getContext('2d')
    #trace une ligne entre les 2 carrés
    contexte.beginPath()
    contexte.strokeStyle = @lineColor
    contexte.moveTo(@noeud1.getCenterX, @noeud1.getCenterY)
    contexte.lineTo(@noeud2.getCenterX, @noeud2.getCenterY)
    contexte.stroke(); 
    
  drawSvg (lineSvg) ->
    lineSvg.setAttribute('x1', @noeud1.getCenterX)
    lineSvg.setAttribute('y1', @noeud1.getCenterY)
    lineSvg.setAttribute('x2', @noeud2.getCenterX)
    lineSvg.setAttribute('y2', @noeud2.getCenterY)
    lineSvg.setAttribute('stroke', @lineColor)
    lineSvg.setAttribute('stroke-width', @lineWidth)
