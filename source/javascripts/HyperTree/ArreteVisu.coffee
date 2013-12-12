class rjlHyperTree.ArreteVisu

  constructor: (@noeud1, @noeud2) ->
    @lineColor = "green"
    @lineWidth = 1

  drawCanvas: (canvas) ->
    contexte = canvas.getContext('2d')
    contexte.beginPath()
    contexte.strokeStyle = @lineColor
    contexte.moveTo(@noeud1.getCenterX(), @noeud1.getCenterY())
    contexte.lineTo(@noeud2.getCenterX(), @noeud2.getCenterY())
    contexte.stroke();

  drawSvg: (svg) ->
    lineSvg = document.createElementNS('http://www.w3.org/2000/svg','line')
    svg.appendChild(lineSvg)
    lineSvg.setAttributeNS(null, 'x1', @noeud1.getCenterX())
    lineSvg.setAttributeNS(null, 'y1', @noeud1.getCenterY())
    lineSvg.setAttributeNS(null, 'x2', @noeud2.getCenterX())
    lineSvg.setAttributeNS(null, 'y2', @noeud2.getCenterY())
    lineSvg.setAttributeNS(null, 'stroke', @lineColor)
    lineSvg.setAttributeNS(null, 'stroke-width', @lineWidth)
