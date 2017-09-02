document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('myCanvas');
  canvas.height = 500;
  canvas.width = 500;
  const ctx = canvas.getContext('2d');

  ctx.fillStyle = 'rgb(150,100,50)';
  ctx.fillRect(10,10,55,55);

  ctx.beginPath();
  ctx.arc(75,75,50,0,2*Math.PI);
  ctx.strokeStyle = 'rgb(50,100,150)';
  ctx.lineWidth = 2;
  ctx.stroke();

  ctx.fillStyle = 'rgb(200,210,150)'
  ctx.fill();
});
