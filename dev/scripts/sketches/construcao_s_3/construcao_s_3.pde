float x, y, xoff;

public void setup() {
  size( $("#construcao_s_3").width(), $("#construcao_s_3").width());
  background (255);
}

public void draw() {
  float m = width/12;
  float n = 16;
  float min = 1.5*m;
  float r = 3*m;
  float a = 2*PI/n;
  
  background (255);  
  noFill();
  stroke(0);
  strokeCap(SQUARE);
  strokeWeight(1);
  
  pushMatrix();
    translate(width/2, height/2);
    
    beginShape();
      for (int i = 0; i < n; i++) {
        vertex ((noise(xoff+PI*i)*r + min) * cos(a * i) , 
        (noise(xoff+PI*PI*i)*r + min) * sin(a * i));
        }
    endShape(CLOSE);
    
    beginShape();
      for (int i = 0; i < n; i++) {
        vertex ((noise(xoff+HALF_PI*PI*i)*r + min) * cos(a * i) , 
        (noise(xoff+PI*QUARTER_PI*i)*r + min) * sin(a * i));
        }
    endShape(CLOSE);
    
    xoff += 0.002;
  popMatrix();
  
  strokeCap(SQUARE);
  strokeWeight(0.167*m);
  line(6*m, 5*m, 6*m, 7*m);
  arc(6*m, 10*m, 8*m, 8*m, PI+PI/3, PI+HALF_PI+HALF_PI/3);
  
  }
  
public void resizeSketch() {
  size( $("#construcao_s_3").width(), $("#construcao_s_3").width());
  }
    
