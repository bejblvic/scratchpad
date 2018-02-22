function City(xpos, ypos) {
  this.x = xpos;
  this.y = ypos;
  this.damage = 0;  
  
  this.update = function() { 
  }
  this.show = function() {
   strokeWeight(1);
   stroke(0);
   fill(255);
   rect(this.x-20, this.y, 20, -80);
   rect(this.x+5, this.y, 10, -100);
   rect(this.x-35, this.y, 50, -40);
   rect(this.x, this.y, 20, -30);
   rect(this.x-15, this.y, 5, -20);
  }  
}