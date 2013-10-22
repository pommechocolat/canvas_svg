pere = new NoeudVisu
fils = new NoeudVisu(130, 130, "#F66", 50, 50)

#lg = new ArreteVisu(pere, fils)
#lg.drawCanvas(document.getElementById('canvas'))
#lg.drawSvg(document.getElementById('ligne1_svg'))

pere.drawCanvas(document.getElementById('canvas'))
fils.drawCanvas(document.getElementById('canvas'))

pere.drawSvg(document.getElementById('rectangle1_svg'))
fils.drawSvg(document.getElementById('rectangle2_svg'))
