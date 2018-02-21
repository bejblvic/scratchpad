var winw = 800;
var winh = winw*0.8;
var NumCities = 4;
var cities = [];

function setup() {
  createCanvas(winw,winh);
  //Make Cities
  var city_space = winw/(NumCities+1);
  for (var ii = 0; ii < NumCities; ii++) {
    cities[ii] = new City((ii+1)*city_space,winh);
  }
}

function draw() {
  background(167, 195, 242);
  for (var ii = 0; ii<NumCities; ii++) {
    cities[ii].show();
  }
}


function City(xpos, ypos) {
  this.x = xpos;
  this.y = ypos;
  this.damage = 0;  
  
  this.update = function() {
    
  }
  
  this.show = function() {
   strokeWeight(1);
   fill(0);
   rect(this.x-20, this.y, 20, -80);
   rect(this.x+5, this.y, 5, -100);
   rect(this.x, this.y, 20, -30);
  }
  
};