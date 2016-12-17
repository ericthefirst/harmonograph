float MARGIN;
float r;
float period_x = 45, 
      period_y = 62;
float slow_down = 11.0;        // set to 1000.0 for period in seconds
color c = color(255,0,0,120);

// previous locations
float px = -1, 
      py = -1;
      

void setup() {
  background(0);
  size(800, 800);
  r = width * 3/8;
  stroke(c);
}



void draw() {
  float x = width/2 + r * cos(frameCount/60.0*1000 / slow_down / period_x);
  float y = width/2 + r * cos(frameCount/60.0*1000 / slow_down / period_y);
  if(px != -1)
    line(px, py, x, y);
  px = x;
  py = y;
}

