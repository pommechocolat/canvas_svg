# CANVAS
canvas = document.getElementById('canvas')
contexte = canvas.getContext('2d')
  #trace une ligne entre les 2 carrés
contexte.beginPath();
contexte.strokeStyle='green';
contexte.moveTo(55,55);
contexte.lineTo(155,155);
contexte.stroke(); 
  #rectangle 1
contexte.fillStyle = "#66F"
contexte.fillRect(30, 30, 50, 50);
  #rectangle 2
contexte.fillStyle = "#F66"
contexte.fillRect(130, 130, 50, 50);

# SVG
  #trace une ligne entre les 2 carrés
ligneSvg1 = document.getElementById('ligne1_svg')
ligneSvg1.setAttribute('x1', 55)
ligneSvg1.setAttribute('y1', 55)
ligneSvg1.setAttribute('x2', 155)
ligneSvg1.setAttribute('y2', 155)
ligneSvg1.setAttribute('stroke', 'green')
ligneSvg1.setAttribute('stroke-width', 1)
  #rectangle 1
rectangleSvg1 = document.getElementById('rectangle1_svg')
rectangleSvg1.setAttribute('width', 50)
rectangleSvg1.setAttribute('height', 50)
rectangleSvg1.setAttribute('x', 30)
rectangleSvg1.setAttribute('y', 30)
rectangleSvg1.style.fill = "#66F"
  #rectangle 2
rectangleSvg2 = document.getElementById('rectangle2_svg')
rectangleSvg2.setAttribute('width', 50)
rectangleSvg2.setAttribute('height', 50)
rectangleSvg2.setAttribute('x', 130)
rectangleSvg2.setAttribute('y', 130)
rectangleSvg2.style.fill = "#F66"
