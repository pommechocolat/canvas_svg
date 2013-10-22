class @NoeudVisu
  
  constructor: (@leftPos=30, @topPos=30, @backgroundColor="#66F", @width=50, @height=50) ->
  
  drawCanvas: (canvas) ->
    contexte = canvas.getContext('2d')
    contexte.fillStyle = @backgroundColor
    contexte.fillRect(@leftPos, @topPos, @height, @width);

  drawSvg: (recSvg) ->
    recSvg.setAttribute('width', @width)
    recSvg.setAttribute('height', @height)
    recSvg.setAttribute('x', @leftPos)
    recSvg.setAttribute('y', @topPos)
    recSvg.style.fill = @backgroundColor

  getCenterX: ->
    @leftPos+@width/2

  getCenterY: ->
    @topPos+@height/2

