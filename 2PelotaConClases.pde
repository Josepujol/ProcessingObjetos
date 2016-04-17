Pelota miPelota;

void setup() {
  size (500, 500);
  miPelota= new Pelota();
}

void draw() {
  background(255);
  miPelota.move();
  miPelota.display();
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
  Pelota() {
    c=color (255);
    xpos=width/2;
    ypos=height/2;
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
