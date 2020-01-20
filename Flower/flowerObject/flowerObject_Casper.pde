Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;

void setup() {
  size(1400,1000);
  background(#43AF76);
  
  int _r1= 60;
  int _r2 = 80;
  int _r3 = 100;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  int offset = 350;
  
  myFlower1 = new Flower(_r1,_petals,_x,_y-offset,_pc,5);
  myFlower2 = new Flower(_r2,_petals,_x,_y,_pc,10);
  myFlower3 = new Flower(_r3,_petals,_x,_y+offset,_pc,15);

}

void draw(){
  background (0,0,200);
  
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();   
  myFlower1.move();  
  myFlower1.bounce();
  myFlower2.move();
  myFlower2.bounce();
  myFlower3.move();
  myFlower3.bounce();
}
