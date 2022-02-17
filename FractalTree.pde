public void setup() {
  size (500, 500);
  background (0);
}

float scale = 255;
//float bright = 255;
public void draw() {
  reset();
  //fractal(250, 250, scale, 150);
  noLoop();
}

public void keyPressed(){
  loop();
}

public void fractal(float x, float y, float s, float p, float angle) {
  if (s < scale*.15) {
  } else {
    int branches = 6;
    float k = (float)(2*PI/(branches+1));
    //int bright = 0;
    //(float)(Math.random()*2*PI);
    for (int i = 0; i < branches; i++) {
      //stroke(255-bright,0,bright);
      stroke(s*2, s/2, 255-s, s*4);  
      angle += (Math.random()*(k*.8)-(k*.4))+k;
      float newX = (float)(x+p*Math.cos(angle));
      float newY = (float)(y+p*Math.sin(angle));
      line (x, y, newX, newY);
      //bright += 50;
      //p += (float)(Math.random()*s*0.3)-s*0.15;
      fractal(newX, newY, s*.6, p*.6, angle);
    }
  }
}

public void reset(){
  float scale = 255;
  fill(0);
  rect(0,0,500, 500);
  fractal(250, 250, scale, 150, 0);
}
