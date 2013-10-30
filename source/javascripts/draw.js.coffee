pere = new NoeudVisu
fils = new NoeudVisu(155, 155, "#F66", 50, 50)
ligne = new ArreteVisu(pere, fils)


// Canvas
ligne.drawCanvas(document.getElementById('canvas'))

pere.drawCanvas(document.getElementById('canvas'))
fils.drawCanvas(document.getElementById('canvas'))

// SVG
ligne.drawSvg(document.getElementById('ligne1_svg'))

pere.drawSvg(document.getElementById('rectangle1_svg'))
fils.drawSvg(document.getElementById('rectangle2_svg'))

