class Flower {
  
 // Variables
  float speed; // speed of flowers 
  float ballX;
  float ballY;
 
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 int petalColor;//hexadecimal number for the color of petals
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_speed) {
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor=temp_petalColor;
  speed = temp_speed;
}

void display () {
  
  float ballX;
  float ballY;
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
    ballX=x + r*cos(i);
    ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}
  void move() {
    x = x + speed;
  }
  
  float bounce() {
    if (x > width-r || x < r || y > height || y < 0) {
      speed = speed * (-1);
    }
    return speed;

  }
}
