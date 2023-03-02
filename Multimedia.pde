void setup(){
  size(905,905);
  background(0);
  frameRate(1);
  
}

int[][][] figuras(){
  int elementos[][][] = new int[20][20][4];
for ( int  y = 0;  y < 20 ; y++ ) {
     for( int  x = 0 ;  x <20 ;  x++ ){
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

  int[][][] e = new int[20][20][4];
void draw(){

  if (b){
    e = figuras();
  }
for(int r = 0; r < 20; r++){
    for(int c = 0; c < 20; c++){   
      
      int C = 45*c;
      int R = 45*r;
      switch(e[r][c][0]){
        case 1:
          fill(noise(xOff1)*255,noise(yOff1)*255,noise(zOff1)*255);
          noStroke();
          square(5+C,5+R,40);
          break;
        case 2:
          fill(noise(xOff1)*255,noise(yOff1)*255,noise(zOff1)*255);
          noStroke();
          circle(25+C,25+R,40);
          break;
        case 3:
          fill(noise(xOff1)*255,noise(yOff1)*255,noise(zOff1)*255);
          noStroke();
          quad(25+C,5+R,45+C,25+R,25+C,45+R,5+C,25+R);
        break;
      }
      xOff1 += increment;
      yOff1 += increment;
      zOff1 += increment;
      switch(e[r][c][1]){
        case 1:
          fill(noise(xOff2)*150,noise(yOff2)*150,noise(zOff2)*150);
          noStroke();
          square(10+C,10+R,30);
          break;
        case 2:
          fill(noise(xOff2)*150,noise(yOff2)*150,noise(zOff2)*150);
          noStroke();
          circle(25+C,25+R,30);
          break;
        case 3:
          fill(noise(xOff2)*150,noise(yOff2)*150,noise(zOff2)*150);
          noStroke();
          quad(25+C,10+R,40+C,25+R,25+C,40+R,10+C,25+R);
        break;
      }
      xOff2 += increment;
      yOff2 += increment;
      zOff2 += increment;
      switch(e[r][c][2]){
        case 1:
          fill(noise(xOff3)*255,noise(yOff3)*255,noise(zOff3)*255);
          noStroke();
          square(15+C,15+R,20);
          break;
        case 2:
          fill(noise(xOff3)*255,noise(yOff3)*255,noise(zOff3)*255);
          noStroke();
          circle(25+C,25+R,20);
          break;
        case 3:
          fill(noise(xOff3)*255,noise(yOff3)*255,noise(zOff3)*255);
          noStroke();
          quad(25+C,15+R,35+C,25+R,25+C,35+R,15+C,25+R);
        break;
      }
      xOff3 += increment;
      yOff3 += increment;
      zOff3 += increment;
      switch(e[r][c][3]){
        case 1:
          fill(noise(xOff4)*255,noise(yOff4)*255,noise(zOff4)*255);
          noStroke();
          square(20+C,20+R,10);
          break;
        case 2:
          fill(noise(xOff4)*255,noise(yOff4)*255,noise(zOff4)*255);
          noStroke();
          circle(25+C,25+R,10);
          break;
        case 3:
          fill(noise(xOff4)*255,noise(yOff4)*255,noise(zOff4)*255);
          noStroke();
          quad(25+C,20+R,30+C,25+R,25+C,30+R,20+C,25+R);
        break;
      }
      xOff4 += increment;
      yOff4 += increment;
      zOff4 += increment;
    }
  }
  
b = false;
  
}
