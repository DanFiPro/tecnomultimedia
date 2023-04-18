//Desafio 1

void setup() {
  size(500, 500);
  textSize(200); //Cambia de la fuente a 100
  textAlign(CENTER, CENTER); //centra el texto
}

void draw() {
  // Cambia el color de fondo cada 60 fotogramas (2 segundos a 30 fps)
  if (frameCount % 60 == 0) {

    // Creamos un nuevo color aleatorio
    color mi_color = color(random(255), random(255), random(255));

    // Establecemos el color de fondo de la ventana al nuevo color
    background(mi_color);
  }
  int numero = frameCount / 60;
  fill(255);
  text(numero, width/2, height/2); // Muestra el número en el centro de la pantalla
}
