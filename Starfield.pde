Particle[] ps = new Particle [100];

void setup()
{
  size(1000, 1000);
  for (int i = 0; i < ps.length; i++) {
    ps[i] = new Particle();
  }
  ps[0] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < ps.length; i++) {
    ps[i].move();
    ps[i].show();
  }
}

void mousePressed() {
  for (int i = 0; i < ps.length; i++) {
    ps[i] = new Particle();
  }
  ps[0] = new OddballParticle();
}

class Particle
{
  double myX, myY, myAngle, mySpeed;
  int randColorR, randColorG, randColorB;

  public Particle() {
    myX = mouseX;
    myY = mouseY;
    myAngle = (float)(Math.random()*Math.PI*2);
    mySpeed = (float)(Math.random()*5);
    randColorR = (int)(Math.random()*255);
    randColorG = (int)(Math.random()*255);
    randColorB = (int)(Math.random()*255);
  }

  void show() {
    fill(randColorR, randColorG, randColorB);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move() {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
}



class OddballParticle extends Particle//inherits from Particle
{

  public OddballParticle(){
    myX = mouseX;
    myY = mouseY;
  }
  
  void show(){
    fill(255,255,255);
    rect((float)(myX - 50), (float)(myY - 50), 100,100);
    
  }
  
  void move(){
    myX += (int)(Math.random()*7) - 3;;
    myY += (int)(Math.random()*7) - 3;;
  }
}


