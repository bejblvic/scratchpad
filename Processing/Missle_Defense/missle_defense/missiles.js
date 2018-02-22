function Missle(xpos, ypos) {
  this.xorig = xpos;
  this.yorig = ypos;
  this.x = xpos;
  this.y = ypos;
  this.velx = random(-2,2);  
  this.vely = random(0.1,2);  
  this.state = 1; //0=inactive, 1=active, 2=exploding
  
  this.update = function() {
    this.x += this.velx;
    this.y += this.vely;
    if (this.x > winw || this.x < 1 || this.y > winh) {
      this.state = 0;
    }
  }
  
  this.show = function() {
    if (this.state ==1){
      strokeWeight(4);
      stroke((this.y/winh)*255+100, 80, 90);
      line(this.xorig,this.yorig,this.x,this.y);
    }
  } 
}