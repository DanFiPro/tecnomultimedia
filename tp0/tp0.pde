//tp0: Dibujando con Processing, Retrato

//Variable Imagen
PImage imagen;

void setup() {
  //Tamaño de ventana
  size(800, 400);
  //Imagen/Data
  imagen = loadImage ("data/retrato.jpg");
}

void draw() {
  //Ayuda de Coordenadas X, Y
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  //Dibujo: Retrato
  
  //Color de fondo (Negro)
  background(0);
  
  //Imagen/Retrato
  image(imagen, 400, 0, 400, 400);

  //Grosor de líneas
  strokeWeight(5);
  //Color de Líneas/Contornos (Blanco)
  stroke(255);
  //Rostro Izquierdo
  line(45, 65, 62, 174);
  line(62, 174, 174, 174);
  //Ojo Izquierdo
  ellipse(135, 130, 55, 50);
  //Nariz
  triangle(148, 174, 235, 174, 185, 250);
  //Boca
  line(140, 300, 235, 300);
  //Rostro Derecho
  line(195, 368, 310, 174);
  line(310, 174, 335, 62);
  //Ojo Derecho
  ellipse(255, 130, 85, 50);
  //Cabello
  line(45, 66, 200, 22);
  //Rulito
  line(200, 22, 190, 55);
  line(190, 55, 220, 40);
  //Grosor de las cejas
  strokeWeight(10);
  //Cejas Izquierda
  line(100, 95, 125, 80);
  line(125, 80, 165, 80);
  //Cejas Derecha
  line(225, 80, 275, 80);
  line(275, 80, 295, 90);
}
