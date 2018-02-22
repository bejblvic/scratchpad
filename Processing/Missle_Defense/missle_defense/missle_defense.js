var winw = 800;
var winh = winw*0.8;
var NumCities = 4;
var NumMissles = 3;
var cities = [];
var missles = [];

function setup() {
  createCanvas(winw,winh);
  //Make Cities
  var city_space = winw/(NumCities+1);
  for (var ii = 0; ii < NumCities; ii++) {
    cities[ii] = new City((ii+1)*city_space,winh);
  }
  for (var ii = 0; ii < NumMissles; ii++) {
    missles[ii] = new Missle(random(0.1*winw,0.9*winw),1);
  }
}

function draw() {
  background(167, 195, 242);
  for (var ii = 0; ii<NumCities; ii++) {
    cities[ii].show();
  }
  for (var ii = 0; ii<NumMissles; ii++) {
    if (missles[ii].state == 0) {
      missles[ii] = new Missle(random(0.1*winw,0.9*winw),1);
    }
    missles[ii].update();
    missles[ii].show();
  }
}


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
  
};

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
  
};