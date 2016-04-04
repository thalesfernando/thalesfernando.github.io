public void setup() {
  size( $("#construcao_s_1").width(), $("#construcao_s_1").width());
  background (255);
}

public void draw() {
  float m = width/12;
   
  background (255);  
  
  noFill();

  stroke(0);
  
  strokeWeight(0.2);
  for (int i=0; i < 11; i++) {
    line(m+m*i,0,m+m*i,height);
    line(0,m+m*i,width,m+m*i);
    }
  
  ellipse(6*m, 10*m, 8*m, 8*m);
  
  strokeCap(SQUARE);
  strokeWeight(0.167*m);
  line(6*m, 5*m, 6*m, 7*m);
  arc(6*m, 10*m, 8*m, 8*m, PI+PI/3, PI+HALF_PI+HALF_PI/3);
  
  }
  
public void resizeSketch() {
  size( $("#construcao_s_1").width(), $("#construcao_s_1").width());
  }
    
