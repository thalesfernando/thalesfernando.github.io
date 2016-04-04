float x, y, xoff;

public void setup() {
  size( $("#construcao_s_2").width(), $("#construcao_s_2").width());
  background (255);
}

public void draw() {
  float m = width/12;
  float n = 16;
  float min = 1.5*m;
  float r = 3*m;
  float a = 2*PI/n;
  
  background (255);  
  stroke(0);
  
  strokeWeight(0.2);
  for (int i=0; i < 11; i++) {
    line(m+m*i,0,m+m*i,height);
    line(0,m+m*i,width,m+m*i);
    }
  
  pushMatrix();
    translate(6*m, 6*m);
    for (int i = 0; i < 8; i++) {
      rotate(QUARTER_PI/2*i);
      line(-4*m,0,4*m,0);
      }
  popMatrix();
  
  ellipse(6*m, 6*m, 8*m, 8*m);
  ellipse(6*m, 6*m, 4*m, 4*m);
  
  strokeWeight(1);
  noFill();
  
  pushMatrix();
    translate(width/2, height/2);
    
    beginShape();
      for (int i = 0; i < n; i++) {
        vertex ((noise(xoff+PI*i)*r + min) * cos(a * i) , 
        (noise(xoff+PI*PI*i)*r + min) * sin(a * i));
        }
    endShape(CLOSE);
    
    xoff += 0.002;
  popMatrix();
  
  stroke(0);
  strokeCap(SQUARE);
  strokeWeight(0.167*m);
  line(6*m, 5*m, 6*m, 7*m);
  arc(6*m, 10*m, 8*m, 8*m, PI+PI/3, PI+HALF_PI+HALF_PI/3);
  
  }
  
public void resizeSketch() {
  size( $("#construcao_s_2").width(), $("#construcao_s_2").width());
  }
    
