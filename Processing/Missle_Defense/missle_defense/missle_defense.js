var winw = 800;
var winh = winw*0.8;
var NumCities = 5;
var NumMissles = 5;
var cities = [];
var missles = [];
var aas = [];

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

function mouseClicked() {
   strokeWeight(1);
   stroke(0);
   fill(255);
   ellipse(mouseX,mouseY,20,20);
}