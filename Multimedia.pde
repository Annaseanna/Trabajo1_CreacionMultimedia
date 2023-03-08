import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Se insertan colores por medio del objeto color en escala rgb
color color1= color(255, 225, 93);
color color2= color(244, 157, 26);
color color3= color(220, 53, 53);
color color4= color(176, 30, 104);
color color5= color(255, 245, 228);
color color6= color(255, 196, 196);
color color7= color(238, 105, 131);
color color8= color(133, 14, 53);
color color9= color(59, 154, 225);
color color10= color(49, 32, 224);
color color11= color(240, 234, 190);
//Se declara una lista que contendra las columnas a las que se aplica la "lluvia"
int[] colums;
//Se ajusta la velocidad en la cual bajaran los cubos por la pantalla
int speed = 5;
//Se hace una lista que contiene los colores descritos para luego aplicar la aleatoriedad
color[] colors  = {  
  color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, color11
};
//Se instancia el objeto de clase minim
Minim minim;
//Se instancia un objeto de tipo AudioPlayer
AudioPlayer player;
//Se crea una variable que contendra la amplitud del sonido
float amplitud;
//Define el tamaño con respecto al sonido
float sizeSq;

//Se declara un metodo para que el tiempo en el que cambien los colores de la figura sean diferentes a la velocidad del frameRate 
public int dilei(int a, int c){
  //Cada vez que el frameRate sea multiplo de 240 cambia el color de las figuras 
  if(a%240 == 0){
  return int(random(1,11));
  } else {
    //Si no es multiplo de 240 se conservan los mismos colores
    return c;
  }
  
}
void setup(){
  //Se define el tamaño de la ventana
  size(905,905);
  //Se pone el color negro de fondo
  background(0);
  //Se inserta la velocidad en la que cambia el frame
  frameRate(60);
  //Se crea un objeto de tipo minim
  minim = new Minim(this);
  //Se sube elarchivo con la cancion
  player = minim.loadFile("song5.mp3");
  //Se reproduce la cancion
  player.play();
  //Se inresa el numero de columnas
  colums = new int[20];
  for (int i = 0; i < 20; i++) {
    //Se asigna la posicion aleatoria con respecto a la altura de los elementos
    colums[i] = int(random(-height, 0));
  }  
}

//Se declara un metodo que retorna una matriz en r3
int[][][] figuras(){
  //La matriz va a guardar los valores generados fila, columna y figuras por posicion
  int elementos[][][] = new int[20][20][4];
for ( int  y = 0;  y < 20 ; y++ ) {
     for( int  x = 0 ;  x <20 ;  x++ ){
         for ( int  z = 0 ;z < 4 ;  z++ ){ 
            // A cada elemento en estos ciclos se le asigna un valor aleatorio
               elementos[y][x][z] = int(random(1,4)); 
         }
     }
 }
 //retorna la matriz 
 return elementos;
}
//Se declara la variable que permite entrar a los switch de generacion de figuras 
boolean b = true;
//Se declaro un elemento de tipo matriz en r3
  int[][][] e = new int[20][20][4];

//Contador que se actualiza cada frame
int yamequierodormir = 0;
//Se guarda la elección de color para cada figura
int[] cc11 = new int[400];
int[] cc12 = new int[400];
int[] cc13 = new int[400];
int[] cc21 = new int[400];
int[] cc22 = new int[400];
int[] cc23 = new int[400];
int[] cc31 = new int[400];
int[] cc32 = new int[400];
int[] cc33 = new int[400];
int[] cc41 = new int[400];
int[] cc42 = new int[400];
int[] cc43 = new int[400];

void draw(){
  //Si b es True se llama al metodo figuras 
  if (b){
    e = figuras();
  }

//Guarda el indice para llamar a los elemento de color guardados
int orden = 0;
//Limpia el background cada frame
background(0);
//Ciclos para la generacion de las figuras por filas y columnas
for(int r = 0; r < 20; r++){
    for(int c = 0; c < 20; c++){
      //Se desplaza 45 pixeles cada columana
      int C = 45*c;
      //Se desplaza 45 por cada fila
      int R = 45*r;
      //Cada switch da diferentes opciones de figura con diferentes tamaños para que se vean contenidas en las otras 
      switch(e[r][c][0]){  
        case 1:
          cc11[orden] = dilei(yamequierodormir,cc11[orden]);
          fill(colors[cc11[orden]]);
          noStroke();
          square(5+C,5+R,40);
          break;
        case 2:
          cc12[orden] = dilei(yamequierodormir,cc12[orden]);
          fill(colors[cc12[orden]]);
          noStroke();
          circle(25+C,25+R,40);
          break;
        case 3:
          cc13[orden] = dilei(yamequierodormir,cc13[orden]);
          fill(colors[cc13[orden]]);
          noStroke();
          quad(25+C,5+R,45+C,25+R,25+C,45+R,5+C,25+R);
        break;
      }
      switch(e[r][c][1]){
        case 1:
          cc21[orden] = dilei(yamequierodormir,cc21[orden]);
          fill(colors[cc21[orden]]);
          noStroke();
          square(10+C,10+R,30);
          break;
        case 2:
          cc22[orden] = dilei(yamequierodormir,cc22[orden]);
          fill(colors[cc22[orden]]);
          noStroke();
          circle(25+C,25+R,30);
          break;
        case 3:
          cc23[orden] = dilei(yamequierodormir,cc23[orden]);
          fill(colors[cc23[orden]]);
          noStroke();
          quad(25+C,10+R,40+C,25+R,25+C,40+R,10+C,25+R);
        break;
      }
      switch(e[r][c][2]){
        case 1:
          cc31[orden] = dilei(yamequierodormir,cc31[orden]);
          fill(colors[cc31[orden]]);
          noStroke();
          square(15+C,15+R,20);
          break;
        case 2:
          cc32[orden] = dilei(yamequierodormir,cc32[orden]);
          fill(colors[cc32[orden]]);
          noStroke();
          circle(25+C,25+R,20);
          break;
        case 3:
          cc33[orden] = dilei(yamequierodormir,cc33[orden]);
          fill(colors[cc33[orden]]);
          noStroke();
          quad(25+C,15+R,35+C,25+R,25+C,35+R,15+C,25+R);
        break;
      }
      switch(e[r][c][3]){
        case 1:
          cc41[orden] = dilei(yamequierodormir,cc41[orden]);
          fill(colors[cc41[orden]]);
          noStroke();
          square(20+C,20+R,10);
          break;
        case 2:
          cc42[orden] = dilei(yamequierodormir,cc42[orden]);
          fill(colors[cc42[orden]]);
          noStroke();
          circle(25+C,25+R,10);
          break;
        case 3:
          cc43[orden] = dilei(yamequierodormir,cc43[orden]);
          fill(colors[cc43[orden]]);
          noStroke();
          quad(25+C,20+R,30+C,25+R,25+C,30+R,20+C,25+R);
        break;
      }
      orden++;
    }
  }
//La amplitud y sizeSq, guarda el nivel de la musica y lo convierte en un valor
amplitud = constrain(player.mix.level(),0.0,0.35);
sizeSq = map(amplitud, 0.0,0.35,40,160);
   //Se pone en falso para que no entre al ciclo de generacion de figuras
   b = false;
//Por medio del for se generan los cubos que bajan por columna 
for (int i = 0; i < 20; i++) {
  fill(128,128,128,195);
  rect(5+45*i, colums[i]-40-sizeSq,40,40);
  fill(102,102,102,200);
  rect(5+45*i, colums[i]-32-sizeSq*0.8,40,40);
  fill(77,77,77,205);
  rect(5+45*i, colums[i]-24-sizeSq*0.6,40,40);
  fill(51,51,51,210);
  rect(5+45*i, colums[i]-16-sizeSq*0.4,40,40);
  fill(26,26,26,215);
  rect(5+45*i, colums[i]-8-sizeSq*0.2,40,40);
  fill(13,11,10);
  rect(5+45*i, colums[i],40,40);
  colums[i] += speed; 
  //Si la posicion es mayor a la longitud de la columna se asigna una aleatoriamente
  if (colums[i] > height) { 
    colums[i] = int(random(-height, 0));

  }
}
//Se le aumenta 5 al contador de frames 
yamequierodormir = yamequierodormir + 5;
 

  }
