float r2 = sqrt(2);
float s = 0.1;
float ratio = 2;

color bg = #FFFFFF;
color f = #0000FF;

public void setup(){
  if (($( window ).width()) < 900) {
    size( $("#noordzij_e").width()*2, $("#noordzij_e").width()*2/3*ratio);
  } else if (($( window ).width()) < 1200) {
    size( $("#noordzij_e").width()*2, $("#noordzij_e").width()*1/2*ratio);
  } else {
    size( $("#noordzij_e").width()*2, $("#noordzij_e").width()*2/3*ratio);
  }
  //size(720,320);
  background(bg);
  frameRate(24);
  }

public void draw(){
  
  frameRate(24);
  smooth();
  noStroke();
  scale(s);
  background(bg);
  
  int ny = height/80;
  int nx = width/80;
  
  float restoy = height % 80;
  float restox = width % 80;
  
  float incy = restoy/ny;
  float incx = restox/nx;

  for(int j = 0; j < (height/80); j++) {
    pushMatrix();
      translate(0, incy*10);
      translate(0, 800*j+incy*10*j);
      for (int i = 0; i < (width/80); i++) {
        
        pushMatrix();
          translate(incx*10, 0);
          translate(800*i+incx*10*i, 0);
    
          float d = dist (mouseX, mouseY, i*400*s, j*400*s);
          
          float pmax = map(d, width/2, 0, 160, 8);
          float pmin = 16;
          
          float one_ax = 670 - pmax;
          float one_ay = map(d, 0, width, 225.584, 218.334);
          float one_bx = map(d, 0, width, 560.403, 465.593);
          float one_by = 100 + pmin;
          
          float two_ax = map(d, 0, width, 239.597, 334.407);
          float two_ay = 100 + pmin;
          float two_bx = 130 + pmax;
          float two_by = map(d, 0, width, 225.584, 218.334);
          
          float tri_ax = 130 + pmax;
          float tri_ay = map(d, 0, width, 574.418, 581.668);
          float tri_bx = map(d, 0, width, 251.437 , 339.249);
          float tri_by = 700 - pmin;
          
          float qua_ay = 700 - pmin;
          float qua_bx = 670 - pmin;
    
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
            bezierVertex(548.563, qua_ay, qua_bx, 575.418, 670 - pmin, 400);//4
            endShape(CLOSE);
    
          beginShape();
            vertex(130, 400);
            vertex(130, 400 - (pmin*r2/2));
            vertex(669.498, 400 - (pmin*r2/2));
            vertex(669.498, 400);
            endShape(CLOSE);
    
          fill(bg); 
          rect(403.716, 400, 350, 100);
    
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
        
          popMatrix();
        }
      popMatrix();
    }

    // blendMode(MULTIPLY);
    // fill(0, 0, 255, 255);
    // rect(0,0,$("#noordzij_e").width()*20, $("#noordzij_e").height()*20);

  }

public void resizeSketch() {
  //caralho isso eh muito foda, eu usei fucking media queries dentro do .pde
  if (($( window ).width()) < 900) {
    size( $("#noordzij_e").width()*2, $("#noordzij_e").width()*2/3*ratio);
  } else if (($( window ).width()) < 1200) {
    size( $("#noordzij_e").width()*2, $("#noordzij_e").width()*1/2*ratio);
  } else {
    size( $("#noordzij_e").width()*2, $("#noordzij_e").width()*2/3*ratio);
  }
  mouseX = 0;
  mouseY = 0;
}
    
