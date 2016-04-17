/* 
 Ejemplo de como crear un objeto basado en clases
 Conceptos: constructor con argumentos
 Clases tipo array
 */

Pelota[] miPelota = new Pelota[20];

void setup() {
  size (800, 800);
  for (int i=0; i< miPelota.length; i++) {
    miPelota[i]= new Pelota(width/miPelota.length*i);
  }
}

void draw() {
  background(255);
  for (int i=0; i< miPelota.length; i++) {
    miPelota[i].move();
    miPelota[i].crecer();
    miPelota[i].display();
  }
}

class Pelota {
  // DATOS 
  float xpos;  // posicion x de la pelota
  float ypos;  // posicion y de la pelotq
  float vx;  // velocidad x pelota
  float vy;  // velocidad y pelota
  float diameter; // diametro de la pelota
  color c; // color de relleno de la pelota
  // colores del contorno de la pelota
  float r;
  float g;
  float b;

  // CONSTRUCTOR
  Pelota(float xposTemp) {
    c=color (255);
    xpos=xposTemp;
    ypos=height/2;
    vx=random(-5, 5);
    vy=random(-5, 5); 
    diameter= random (10, 30);
    r=random(0, 255);
    g=random(0, 255);
    b=random(0, 255);
  }
  // FUNCIONES
  // dibuja la pelota
  void display() {

    fill(c);
    stroke(r, g, b);
    strokeWeight(2);
    ellipse(xpos, ypos, diameter, diameter);
  }
// mueve la pelota
  void move() {
    xpos=xpos+vx;
    ypos=ypos+vy;
    if (( xpos>width-diameter/2)||(xpos-diameter/2<0)) {
      vx=-vx;
    }  
    if ((ypos>height-diameter/2)||(ypos-diameter/2<0)) {
      vy=-vy;
    }
  }
// crece
  void crecer() {
    diameter=diameter+0.1;
  }
}
