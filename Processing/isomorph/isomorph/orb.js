
function Orb(xorig,yorig) {

    this.r = random(100,500);
    this.x = xorig;
    this.y = yorig;
    this.velx = random (2,5);
    this.vely = random (2,5);
  
    this.update = function() {
    this.x += this.velx;
    this.y += this.vely;
    if (this.x > sw || this.x < 1) {
      this.velx *= -1;
    }
    if (this.y > sh || this.y < 1) {
      this.vely *= -1;
    }
  }
 
  this.show = function() {
    noFill();
    stroke(200);
    strokeWeight(4);
    ellipse(this.x, this.y, this.r*2, this.r*2);
  }
  
};
  