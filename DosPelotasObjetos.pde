Pelota miPelota1;
Pelota miPelota2;

void setup() {
  size (500, 500);
  miPelota1= new Pelota(width/4, height/2);
  miPelota2= new Pelota(width*3/4, height/2);
}

void draw() {
  background(255);
  miPelota1.move();
  miPelota2.move();
  miPelota1.display();
  miPelota2.display();
}

class Pelota {
  // DATOS
  float xpos;  // posicion x de la pelota
  float ypos;  // posicion y de la pelotq
  color c;
  float vx;  // velocidad x pelota
  float vy;  // velocidad y pelota
  float diameter;
  float r;
  float g;
  float b;

  // CONSTRUCTOR
  Pelota(float xposTemp, float yposTemp) {
    c=color (255);
    xpos=xposTemp;
    ypos=yposTemp;
    vx=random(-5, 5);
    vy=random(-5, 5); 
    diameter= 35;
    r=random(0, 255);
    g=random(0, 255);
    b=random(0, 255);
  }
  // FUNCIONES
  void display() {

    fill(c);
    stroke(r, g, b);
    strokeWeight(2);
    ellipse(xpos, ypos, diameter, diameter);
  }

  void move() {
    xpos=xpos+vx;
    ypos=ypos+vy;
    if ((xpos>width-diameter/2)||(xpos-diameter/2<0)) {
      vx=-vx;
    }  
    if ((ypos>height-diameter/2)||(ypos-diameter/2<0)) {
      vy=-vy;
    }
  }
}
