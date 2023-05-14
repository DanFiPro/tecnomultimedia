// Variables
PFont font;
int pantallaActual;
int tiempoTransicion; // Tiempo de transición entre pantallas en milisegundos (2 segundos)
int tiempoPantalla; // Tiempo de la primera pantalla en milisegundos (4 segundos)+
PImage [] imagen = new PImage[10]; //imganes
float animX; 
float animY;

void setup() {
  // Tamaño de la ventana
  size(640, 480);
  
  // Asignación
  pantallaActual = 0;
  tiempoTransicion = 2000; //tiempo de transición entre pantallas en milisegundos (2 segundos)
  tiempoPantalla = 4000; //tiempo de la primera pantalla en milisegundos (4 segundos)
  //animación del texto
  animX = width / 2;
  animY = height / 2;
  
  // Carga de la fuente
  font = loadFont("data/Calibri.vlw");
  
  // Carga de imágenes
  imagen[0] = loadImage("375337_1239610.jpg");
  imagen[1] = loadImage("abstraccion_polar_2-10.png");
  imagen[2] = loadImage("abstraccion_celular_3_01.png");
  imagen[3] = loadImage("abstraccion_polar_2.png");
  imagen[4] = loadImage("mariposa_01.png");
  imagen[5] = loadImage("abstraccion_celular_5.png");
  imagen[6] = loadImage("reloj_16.png");
  imagen[7] = loadImage("abstraccion_celular_3.png");
  imagen[8] = loadImage("Hyper-vasarely_03.png");
  imagen[9] = loadImage("375337_1239610.jpg");
  
  // Configuración inicial
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  textFont(font);
  textSize(32);
}

void draw() {
  
  // Mostrar la imagen actual
  image(imagen[pantallaActual], width/2, height/2, width, height);
  
  fill(255);
  text("Obra NFT", animX, animY);
  animX += random(-2, 7);
  animY += random(-2, 7);
  
  // Controlar el tiempo de transición
  if (millis() >= tiempoTransicion * pantallaActual + tiempoPantalla) {
    pantallaActual++;
    
    if (pantallaActual > 8) {
      pantallaActual = 0;
    }
    
    delay(tiempoTransicion);
  }
}

void mousePressed() {
  if (pantallaActual == 8) {
    pantallaActual = 0;
  }
}
