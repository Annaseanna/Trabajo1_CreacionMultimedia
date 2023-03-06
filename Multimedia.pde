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
int[] colums;
int speed = 30;
color[] colors  = {  
  color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, color11
};
void setup(){
  size(905,905);
  background(0);
  frameRate(10);
  colums = new int[20];
  for (int i = 0; i < 20; i++) {
    colums[i] = int(random(-height, 0));
  }  
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
          fill(colors[int(random(1,11))]);
          noStroke();
          square(5+C,5+R,40);
          break;
        case 2:
          fill(colors[int(random(1,11))]);
          noStroke();
          circle(25+C,25+R,40);
          break;
        case 3:
          fill(colors[int(random(1,11))]);
          noStroke();
          quad(25+C,5+R,45+C,25+R,25+C,45+R,5+C,25+R);
        break;
      }

      switch(e[r][c][1]){
        case 1:
          fill(colors[int(random(1,11))]);
          noStroke();
          square(10+C,10+R,30);
          break;
        case 2:
          fill(colors[int(random(1,11))]);
          noStroke();
          circle(25+C,25+R,30);
          break;
        case 3:
          fill(colors[int(random(1,11))]);
          noStroke();
          quad(25+C,10+R,40+C,25+R,25+C,40+R,10+C,25+R);
        break;
      }

      switch(e[r][c][2]){
        case 1:
          fill(colors[int(random(1,11))]);
          noStroke();
          square(15+C,15+R,20);
          break;
        case 2:
          fill(colors[int(random(1,11))]);
          noStroke();
          circle(25+C,25+R,20);
          break;
        case 3:
          fill(colors[int(random(1,11))]);
          noStroke();
          quad(25+C,15+R,35+C,25+R,25+C,35+R,15+C,25+R);
        break;
      }

      switch(e[r][c][3]){
        case 1:
          fill(colors[int(random(1,11))]);
          noStroke();
          square(20+C,20+R,10);
          break;
        case 2:
          fill(colors[int(random(1,11))]);
          noStroke();
          circle(25+C,25+R,10);
          break;
        case 3:
          fill(colors[int(random(1,11))]);
          noStroke();
          quad(25+C,20+R,30+C,25+R,25+C,30+R,20+C,25+R);
        break;
      }
  }
}
b = false; 
for (int i = 0; i < 20; i++) {
  fill(0); 
  blendMode(BLEND);
  rect(5+45*i, colums[i],40,40);
  colums[i] += speed; 
  if (colums[i] > height) { 
    colums[i] = int(random(-height, 0));
  }
}
}
