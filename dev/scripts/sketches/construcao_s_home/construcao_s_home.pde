float x, y, xoff;

public void setup() {
  size( $("#construcao_s_home").width(), $("#construcao_s_home").width());
  background (255);
}

public void draw() {
  colorMode(HSB, 1);
  float m = width/12;
  float n = 16;
  float min = 1.5*m;
  float r = 3*m;
  float a = 2*PI/n;
  
  noStroke();
  background (255);
  translate(-0.25*width, -0.25*height);
  scale(1.5);
  
  pushMatrix();
    translate(width/2, height/2);
    
    fill(noise(xoff+100*PI)*1.2, 1, 1, 0.5);
    beginShape();
      for (int i = 0; i < n; i++) {
         vertex ((noise(xoff+PI*i)*r + min) * cos(a * i) , 
        (noise(xoff+PI*PI*i)*r + min) * sin(a * i));
        }
    endShape(CLOSE);
    
    fill(noise(xoff)*2, 1, 1, 0.5);
    beginShape();
      for (int i = 0; i < n; i++) {
        vertex ((noise(xoff+HALF_PI*PI*i)*r + min) * cos(a * i) , 
        (noise(xoff+PI*QUARTER_PI*i)*r + min) * sin(a * i));
        }
    endShape(CLOSE);
    
    xoff += 0.0075;
  popMatrix();
  
  noFill();
  stroke(180, 0, 100);
  strokeCap(SQUARE);
  strokeWeight(0.167*m);
  line(6*m, 5*m, 6*m, 7*m);
  arc(6*m, 10*m, 8*m, 8*m, PI+PI/3, PI+HALF_PI+HALF_PI/3);
  
  }
  
public void resizeSketch() {
  size( $("#construcao_s_home").width(), $("#construcao_s_home").width());
  }
    
