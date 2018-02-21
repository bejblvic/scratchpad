var orbs = [];
var myorb;
var numorbs = 5;
sw=400;
sh=200;
function setup() {
  createCanvas(sw,sh);
  for (var ii = 0; ii < numorbs; ii++){
    orbs[ii] = new Orb(random(0,sw), random(0,sh));
  }
//  myorb = new Orb(random(0,width), random(0,height));
}

function draw() {
  background(50);
  colorMode(HSB);
  loadPixels();
    for(x=0; x<sw; x++) {
        for(y=0; y<sh; y++) {
            var sum = 0;
            for(ii=0; ii<numorbs; ii++) {
                var xdif = x-orbs[ii].x;
                var ydif = y-orbs[ii].y;
                var d = sqrt((xdif*xdif) + (ydif*ydif));
                sum += 14* orbs[ii].r/d;
            }
            set(x, y, color(sum, 255, 255));
        }
    }  
  updatePixels();
  
  //myorb.update();
  //myorb.show();
  for (ii=0; ii<numorbs; ii++) {
    orbs[ii].update();
//    orbs[ii].show();
  }
}