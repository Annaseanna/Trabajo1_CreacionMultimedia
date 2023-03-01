void setup(){
  size(1055,950);
  background(0);
  frameRate(60);
  
}

int[][][] figuras(){
  int elementos[][][] = new int[10][11][4];
for ( int  y = 0;  y < 10 ; y++ ) {
     for( int  x = 0 ;  x <11 ;  x++ ){
         for ( int  z = 0 ;z < 4 ;  z++ ){ 
               elementos[y][x][z] = int(random(1,4)); 
         }
     }
 }
 
 return elementos;
}

boolean b = true;
float xOff1 = 0.0;
float yOff1 = 500.0;
float zOff1 = 1000.0;

float xOff2 = 1000.0;
float yOff2 = 0.0;
float zOff2 = 500.0;

float xOff3 = 500.0;
float yOff3 = 1000.0;
float zOff3 = 0.0;

float xOff4 = 250.0;
float yOff4 = 750.0;
float zOff4 = 950.0;
float increment = 0.0001;

  int[][][] e = new int[10][11][4];
void draw(){

  if (b){
    e = figuras();
  }
for(int r = 0; r < 10; r++){
    for(int c = 0; c < 11; c++){   
      
      int C = 105*c;
      int R = 105*r;
      switch(e[r][c][0]){
        case 1:
          fill(noise(xOff1)*255,noise(yOff1)*255,noise(zOff1)*255);
          square(5+C,5+R,100);
          break;
        case 2:
          fill(noise(xOff1)*255,noise(yOff1)*255,noise(zOff1)*255);
          circle(55+C,55+R,100);
          break;
        case 3:
          fill(noise(xOff1)*255,noise(yOff1)*255,noise(zOff1)*255);
          quad(55+C,5+R,105+C,55+R,55+C,105+R,5+C,55+R);
        break;
      }
      xOff1 += increment;
      yOff1 += increment;
      zOff1 += increment;
      switch(e[r][c][1]){
        case 1:
          fill(noise(xOff2)*255,noise(yOff2)*255,noise(zOff2)*255);
          square(15+C,15+R,80);
          break;
        case 2:
          fill(noise(xOff2)*255,noise(yOff2)*255,noise(zOff2)*255);
          circle(55+C,55+R,80);
          break;
        case 3:
          fill(noise(xOff2)*255,noise(yOff2)*255,noise(zOff2)*255);
          quad(55+C,15+R,95+C,55+R,55+C,95+R,15+C,55+R);
        break;
      }
      xOff2 += increment;
      yOff2 += increment;
      zOff2 += increment;
      switch(e[r][c][2]){
        case 1:
          fill(noise(xOff3)*255,noise(yOff3)*255,noise(zOff3)*255);
          square(25+C,25+R,60);
          break;
        case 2:
          fill(noise(xOff3)*255,noise(yOff3)*255,noise(zOff3)*255);
          circle(55+C,55+R,60);
          break;
        case 3:
          fill(noise(xOff3)*255,noise(yOff3)*255,noise(zOff3)*255);
          quad(55+C,25+R,85+C,55+R,55+C,85+R,25+C,55+R);
        break;
      }
      xOff3 += increment;
      yOff3 += increment;
      zOff3 += increment;
      switch(e[r][c][3]){
        case 1:
          fill(noise(xOff4)*255,noise(yOff4)*255,noise(zOff4)*255);
          square(35+C,35+R,40);
          break;
        case 2:
          fill(noise(xOff4)*255,noise(yOff4)*255,noise(zOff4)*255);
          circle(55+C,55+R,40);
          break;
        case 3:
          fill(noise(xOff4)*255,noise(yOff4)*255,noise(zOff4)*255);
          quad(55+C,35+R,75+C,55+R,55+C,75+R,35+C,55+R);
        break;
      }
      xOff4 += increment;
      yOff4 += increment;
      zOff4 += increment;
    }
  }
  
b = false;
  
}
