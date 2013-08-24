# CANVAS
canvas = document.getElementById('canvas')
contexte = canvas.getContext('2d')
contexte.fillStyle = "#66F"
contexte.fillRect(30, 30, 50, 50);
# SVG
rectangleSvg = document.getElementById('rectangle_svg')
rectangleSvg.setAttribute('width', 50)
rectangleSvg.setAttribute('height', 50)
rectangleSvg.setAttribute('x', 30)
rectangleSvg.setAttribute('y', 30)
rectangleSvg.style.fill = "#66F"

