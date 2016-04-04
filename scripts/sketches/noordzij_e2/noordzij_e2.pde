/* @pjs preload="legenda_noordjiz_e2.png"; */

PImage legenda;
float r2 = sqrt(2);
color bg = #FFFFFF;
color f = #0000FF;

public void setup(){
  size( $("#noordzij_e2").width()*2, $("#noordzij_e2").width()*2);
  background(bg);
  legenda = loadImage("legenda_noordjiz_e2.png");
  mouseX = width/2;
  mouseY = 0;
  }

public void draw(){
  
  pushMatrix();
  scale(width*0.00125);
  noStroke();
  background(bg);
 
  float pmax = map(mouseX, 0, width/2, 8/2, 160/2);
  float pmin = map(mouseY, 0, height/2, pmax, 8);
  
  float one_ax = 670 - pmax;
  float one_ay = map(mouseX, 0, width, 225.584, 318.334);
  float one_bx = map(mouseX, 0, width, 560.403, 465.593);
  float one_by = 100 + pmin;
  
  float two_ax = map(mouseX, 0, width, 239.597, 334.407);
  float two_ay = 100 + pmin; //100
  float two_bx = 130 + pmax;
  float two_by = map(mouseX, 0, width, 225.584, 318.334);
  
  float tri_ax = 130 + pmax;
  float tri_ay = map(mouseX, 0, width, 574.418, 481.668);
  float tri_bx = map(mouseX, 0, width, 251.437 , 339.249);
  float tri_by = 700 - pmin;
  
  float q_x = map(mouseX, 0, width/2, 0, 1/4);
  float q_y = map(mouseY, 0, width/2, 1/4, 0);
  
  float qua_ax = map(mouseY, 0, height, 460.751, 548.563);
  float qua_ax2 = map(mouseY, 0, height, 548.563 - (87.812*q_x), 548.563);
  float qua_ay = 700 - pmin;
  float qua_bx = 670 - pmin;
  float qua_by = map(mouseY, 0, height, 481.668 , 575.418);
  float qua_by2 = map(mouseY, 0, height, 575.418 - (93.75*q_x) , 575.418);
  
  float aj_barra = map(mouseY, 0, height/2, 15/4, 0);
 
  fill(f);
  beginShape();
    vertex(670, 400);//ok
    bezierVertex(670, 575, 549.117, 700, 400,700);//ok
    bezierVertex(250.883, 700, 130, 575, 130, 400);//ok
    bezierVertex(130, 225, 239, 100, 400, 100);//ok
    bezierVertex(561, 100, 670, 225, 670, 400);//ok
    vertex(670 - pmax, 400);//ok
    bezierVertex(one_ax, one_ay, one_bx, one_by, 400, 100 + pmin);//1
    bezierVertex(two_ax, two_ay, two_bx, two_by, 130 + pmax, 400);//2
    bezierVertex(tri_ax, tri_ay, tri_bx, tri_by, 400, 700 - pmin);//3
    bezierVertex(qua_ax2, qua_ay, qua_bx, qua_by2, 670 - pmin, 400);//4 curva danada
  endShape(CLOSE);
 
  beginShape();
    vertex(130, 400);
    vertex(130, 400 - (pmin*r2/2)+(aj_barra * q_x)); //400 - (pmin*r2/2)
    vertex(669.498, 400 - (pmin*r2/2)+(aj_barra * q_x));
    vertex(669.498, 400);
  endShape(CLOSE);
  
  fill(bg); 
  rect(403.716, 400, 350, 150-(100*q_x*q_y));
  
  beginShape();
    vertex(400, 800);
    vertex(0, 800);
    vertex(0, 0);
    vertex(800, 0);
    vertex(800, 800);
    vertex(400, 800);
    vertex(400, 700);
    bezierVertex(549.117, 700, 670, 575, 670, 400);
    bezierVertex(670, 225, 561, 100, 400, 100);
    bezierVertex(239, 100, 130, 225, 130, 400);
    bezierVertex(130, 575, 250.883, 700, 400,700);
  endShape(CLOSE);
  
  /*
  stroke(#00FFFF);
    line(400, 700 - pmin, qua_ax2, qua_ay);
    line(qua_bx, qua_by2, 670 - pmin, 400);
  stroke(0);
    line(400, 700 - pmin, qua_ax, qua_ay);
    line(qua_bx, qua_by, 670 - pmin, 400);
  */
  popMatrix();
  // image(legenda, 0, 0, width, height);
  // if(mouseX <= width/2 -width/40){
  //   if(mouseY >= height/40){
      stroke(f);
      strokeWeight(1.5);
      line(mouseX*2-width/20, mouseY*2-height/20, mouseX*2+width/20, mouseY*2+height/20);
      strokeWeight(1.5);
      line(mouseX*2-width/20, mouseY*2+height/20, mouseX*2+width/20, mouseY*2-height/20);
  //   }
  // }
 }
 
 public void resizeSketch() {
  size( $("#noordzij_e2").width()*2, $("#noordzij_e2").width()*2);
  mouseX = width/2;
  mouseY = 0;
  }
