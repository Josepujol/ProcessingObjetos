/* 
 Ejemplo de como crear proyecto pelota
 sin clases
 */

float xpos;  // posicion x de la pelota
float ypos;  // posicion y de la pelotq
float vx=random(-5, 5);  // velocidad x pelota
float vy=random(-5, 5);  // velocidad y pelota
float diameter=40;    // diametro de la pelota

void setup() {
  // tamaño de la pantalla
  size (400, 400);
  // posicion inicial de la pelota
  xpos=width/2;
  ypos=height/2;
}

void draw() {
  background(255);
  
  // dibuja la pelota
  fill(255);
  stroke(28, 201, 16);
  strokeWeight(3);
  ellipse(xpos, ypos, diameter, diameter);

  // mueve la pelota
  xpos=xpos+vx;
  ypos=ypos+vy;
  // detectar bordes
  if ((xpos>width-diameter/2)||(xpos-diameter/2<0)) {
    vx=-vx;
  }  
  if ((ypos>height-diameter/2)||(ypos-diameter/2<0)) {
    vy=-vy;
  }


}
