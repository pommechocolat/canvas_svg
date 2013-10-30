class @NoeudVisu
  
  constructor: (@x=55, @y=55, @backgroundColor="#66F", @width=50, @height=50) ->
  
  drawCanvas: (canvas) ->
    contexte = canvas.getContext('2d')
    contexte.fillStyle = @backgroundColor
    contexte.fillRect(@top(), @left(), @height, @width);

  drawSvg: (svg) ->
    recSvg= document.createElementNS('http://www.w3.org/2000/svg','rect')
    svg.appendChild(recSvg)
    #svg.insertBefore(lineSvg, first)
    recSvg.setAttributeNS(null, 'width', @width)
    recSvg.setAttributeNS(null, 'height', @height)
    recSvg.setAttributeNS(null, 'x', @left())
    recSvg.setAttributeNS(null, 'y', @top())
    recSvg.style.fill = @backgroundColor

  getCenterX: ->
    @x

  getCenterY: ->
    @y
    
  left: ->
    @x-@width/ 2
    
  top: ->
    @y-@height/ 2
