PImage imagengato;
int x=620, y=40;


// VALORES DE RESOLUCIÓN
void setup() {
  size(800, 300);
}

// FONDOS
void draw  () {
  background(#62BCFF); //Fondo celeste
  fill (#0076CE); //Fondo Azul
  rect (10, 245, 800, 60); //Rectangulo inferior Azul

  //IMAGEN GATOS
  imagengato = loadImage("gatoconbotas.jpg");
  imagengato.resize(380, 300);
  image(imagengato, 0, 0);

  //RECTANGULOS NARANJA Y GRIS
  fill (#F78D00); //COLOR NARANJA
  rect(x, y, 160, 270); //RECTANGULO NARANJA
  fill (#989898);// COLOR GRIS

  if (mousePressed) //mousePressed: Evento cuando presiono el click del mouse

    fill ( random(0, 255), random(0, 255), random(0, 255)); //COLORES RGB RANDOM

  rect (405, 70, 150, 270); // RECTANGULO GRIS
}
void keyPressed() //keyPressed: Evento cuando presiono las flechas 
{ 
  if (keyCode==LEFT) x-=10;
  if (keyCode==RIGHT) x+=10;
  if (keyCode== UP) y-=10;
  if (keyCode== DOWN) y+=10;
}
