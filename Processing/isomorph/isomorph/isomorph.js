var orbs = [];
var myorb;
function setup() {
  createCanvas(1024,1024);
//  for (var ii = 0; ii < orbs.length; ii++){
//    orbs[ii] = new Orb(random(0,width), random(0,height));
//  }
  myorb = new Orb(random(0,width), random(0,height));
}

function draw() {
  background(50);
  loadPixels();
  
  updatePixels();
  
  myorb.update();
  myorb.show();
//  for (ii=0; ii<orbs.length; ii++) {
//    orbs[ii].update();
//    orbs[ii].show();
//  }
}


class Orb {
  constructor(xorig,yorig) {
    this.r = random(50,200);
    this.x = xorig;
    this.y = yorig;
    this.velx = random (2,5);
    this.vely = random (2,5);
  }
  
  update() {
    this.x += this.velx;
    this.y += this.vely;
    if (this.x > width || this.x < 1) {
      this.velx *= -1;
    }
    if (this.y > height || this.y < 1) {
      this.vely *= -1;
    }
  }
 
  show() {
    stroke(200);
    strokeWeight(4);
    ellipse(this.x, this.y, this.r*2, this.r*2);
  }
  
}
  