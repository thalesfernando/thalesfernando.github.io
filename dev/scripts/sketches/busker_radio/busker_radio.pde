/* @pjs preload="background.png"; */
/* @pjs preload="foreground.png"; */
/* @pjs preload="gambiarra.png"; */

int grow = +1;
int d = 1;

PImage bg;
PImage fg;
PImage gb;

public void setup(){
  background(255,255,255);
  size( $("#busker_radio").width(), $("#busker_radio").width()*0.5625);
  mouseX = width/6;
  mouseY = height/3;
  smooth();
  frameRate(16);
  bg = loadImage("background.png");
  fg = loadImage("foreground.png");
  gb = loadImage("gambiarra.png");
}

public void draw(){
  imageMode(CENTER);
  background(255);
  image(bg, width/2, height/2, width, height);
  smooth();
  noStroke();
  float g1x = width/2 - ((185/1366)*width);
  float g1y = height/2 - ((190/1366)*width);
  float g2x = width/2 + ((170/1366)*width);
  float g2y = height/2 - ((190/1366)*width);
  float g3x = width/2 - ((355/1366)*width);
  float g3y = height/2 + ((52/1366)*width);
  float gfx = width/2 - ((21/1366)*width);
  float gfy = height/2 + ((52/1366)*width);
  float pix = width/2 - ((529/1366)*width);
  float piy = height/2 + ((191/1366)*width);
  float vix = width/2 + ((170/1366)*width);
  float viy = height/2 + ((243/1366)*width);
  float rg1 = dist(g1x, g1y, mouseX, mouseY);
  float rg2 = dist(g2x, g2y, mouseX, mouseY);
  float rg3 = dist(g3x, g3y, mouseX, mouseY);
  float rgf = dist(gfx, gfy, mouseX, mouseY);
  float rpi = dist(pix, piy, mouseX, mouseY);
  float rvi = dist(vix, viy, mouseX, mouseY);  
  
  float gg1 = - (rg1/3);
  float gg2 = - (rg2/3);
  float gg3 = - (rg3/3);
  float ggf = - (rgf/3);
  float gpi = - (rpi/3);
  float gvi = - (rvi/3);
  
  float r = (150/1366)*width; //raio máximo da área sensível
  float R = (10/1366)*width; // stroke máximo

    
  // g1 ------------------------------
  
  fill(0);
  noStroke();
  noFill();
  d = (d + grow);
  if (d > 30){
    d = 1;
  }
  for(int i = 0; i < (300/1366)*width;){
    if ( rg1 <= r) {
    int a = 255 - (255*i/300);
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(g1x, g1y, d+i, d+i);
    i = i+((28/1366)*width);
  } else {
    int a = 20;
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(g1x, g1y, d+i, d+i);
    i = i+((28/1366)*width);
  }
  }
 
// g2 ------------------------------

  noStroke();
  noFill();
  d = (d + grow);
  if (d > 30){
    d = 1;
  }
  for(int i = 0; i < (300/1366)*width;){
    if ( rg2 <= r) {
    int a = 255 - (255*i/300);
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(g2x, g2y, d+i, d+i);
    i = i+((28/1366)*width);
  } else {
    int a = 20;
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(g2x, g2y, d+i, d+i);
    i = i+((28/1366)*width);
  }
  }

// g3 ------------------------------

  fill(0);
  noStroke();
  noFill();
  d = (d + grow);
  if (d > 30){
    d = 1;
  }
  for(int i = 0; i < (300/1366)*width;){
    if ( rg3 <= r) {
    int a = 255 - (255*i/300);
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(g3x, g3y, d+i, d+i);
    i = i+((28/1366)*width);
  } else {
    int a = 20;
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(g3x, g3y, d+i, d+i);
    i = i+((28/1366)*width);
  }
  }
  
// gf ------------------------------

  noStroke();
  noFill();
  d = (d + grow);
  if (d > 30){
    d = 1;
  }
  for(int i = 0; i < (300/1366)*width;){
    if ( rgf <= r) {
    int a = 255 - (255*i/300);
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(gfx, gfy, d+i, d+i);
    i = i+((28/1366)*width);
  } else {
    int a = 20;
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(gfx, gfy, d+i, d+i);
    i = i+((28/1366)*width);
  }
  }
  
// pi ------------------------------

  fill(0);
  noStroke();
  noFill();
  d = (d + grow);
  if (d > 30){
    d = 1;
  }
  for(int i = 0; i < (300/1366)*width;){
    if ( rpi <= r) {
    int a = 255 - (255*i/300);
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(pix, piy, d+i, d+i);
    i = i+((28/1366)*width);
  } else {
    int a = 20;
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(pix, piy, d+i, d+i);
    i = i+((28/1366)*width);
  }
  }
  
// vi ------------------------------

  fill(0);
  noStroke();
  noFill();
  d = (d + grow);
  if (d > 30){
    d = 1;
  }
  for(int i = 0; i < (300/1366)*width;){
    if ( rvi <= r) {
    int a = 255 - (255*i/300);
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(vix, viy, d+i, d+i);
    i = i+((28/1366)*width);
  } else {
    int a = 20;
    stroke(54, 44, 41, a);
    strokeWeight(R - (R*i/((260/1366)*width)));
    ellipse(vix, viy, d+i, d+i);
    i = i+((28/1366)*width);
  }
  }
  
//------------------------------
  
  image(gb, width/2, height/2, width, height);
  strokeWeight(2);
  stroke(0,0,0, 100);
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
  image(fg, width/2, height/2, width, height);
}

public void resizeSketch() {
  size( $("#busker_radio").width(), $("#busker_radio").width()*0.5625);
  mouseX = width/6;
  mouseY = height/3;
  }