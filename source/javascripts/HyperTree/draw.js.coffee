pere = new rjlHyperTree.NoeudVisu
fils = new rjlHyperTree.NoeudVisu(155, 155, "#F66", 50, 50)
ligne = new rjlHyperTree.ArreteVisu(pere, fils)


# Canvas
canvas = document.getElementById('canvas')
ligne.drawCanvas(canvas)

pere.drawCanvas(canvas)
fils.drawCanvas(canvas)

# SVG
svg = document.getElementById('svg')
ligne.drawSvg(svg)
pere.drawSvg(svg)
fils.drawSvg(svg)

clickHandler = (e, message) -> 
  alert message+" - "+e
  #e.target.click(e)
  #alert moduleDebug.introspection(e.target)
  console.log moduleDebug.debug(e.target)

canvas.addEventListener "click", (e) => clickHandler(e, "click dans canvas")
svg.addEventListener "click", (e) => clickHandler(e, "click dans svg")
#addEventListener "click", (e) => clickHandler(e, "click dans la fenêtre")
