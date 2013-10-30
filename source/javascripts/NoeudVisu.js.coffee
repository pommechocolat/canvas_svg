class @NoeudVisu
  
  constructor: (@x=55, @y=55, @backgroundColor="#66F", @width=50, @height=50) ->
  
  drawCanvas: (canvas) ->
    contexte = canvas.getContext('2d')
    contexte.fillStyle = @backgroundColor
    contexte.fillRect(@top(), @left(), @height, @width);

  drawSvg: (recSvg) ->
    recSvg.setAttribute('width', @width)
    recSvg.setAttribute('height', @height)
    recSvg.setAttribute('x', @left())
    recSvg.setAttribute('y', @top())
    recSvg.style.fill = @backgroundColor

  getCenterX: ->
    @x

  getCenterY: ->
    @y
    
  left: ->
    @x-@width/ 2
    
  top: ->
    @y-@height/ 2
