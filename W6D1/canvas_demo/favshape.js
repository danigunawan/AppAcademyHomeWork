document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('myCanvas');
  canvas.height = 500;
  canvas.width = 500;
  const ctx = canvas.getContext('2d');

  ctx.beginPath();
  ctx.fillStyle = 'rgb(150,150,150)';
  ctx.moveTo(250, 250);
  ctx.lineTo(200, 250);
  ctx.lineTo(200, 300);
  ctx.fill();
  ctx.moveTo(275, 250);
  ctx.lineTo(250, 250);
  ctx.lineTo(250, 275);
  ctx.fill();
  ctx.moveTo(287, 250);
  ctx.lineTo(275, 250);
  ctx.lineTo(275, 262);
  ctx.fill();

});
