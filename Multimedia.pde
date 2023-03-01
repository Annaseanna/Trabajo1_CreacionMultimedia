void setup(){
  size(1055,950);
  background(0);
  frameRate(3);
  for(int r = 0; r < 10; r++){
    for(int c = 0; c < 11; c++){   
      int x = int(random(1,4));
      int C = 105*c;
      int R = 105*r;
      switch(x){
        case 1:
          fill(random(255),random(255),random(255));
          square(5+C,5+R,100);
          break;
        case 2:
          fill(random(255),random(255),random(255));
          circle(55+C,55+R,100);
          break;
        case 3:
          fill(random(255),random(255),random(255));
          quad(55+C,5+R,105+C,55+R,55+C,105+R,5+C,55+R);
        break;
      }
      x = int(random(1,4));
      switch(x){
        case 1:
          fill(random(255),random(255),random(255));
          square(15+C,15+R,80);
          break;
        case 2:
          fill(random(255),random(255),random(255));
          circle(55+C,55+R,80);
          break;
        case 3:
          fill(random(255),random(255),random(255));
          quad(55+C,15+R,95+C,55+R,55+C,95+R,15+C,55+R);
        break;
      }
      x = int(random(1,4));
      switch(x){
        case 1:
          fill(random(255),random(255),random(255));
          square(25+C,25+R,60);
          break;
        case 2:
          fill(random(255),random(255),random(255));
          circle(55+C,55+R,60);
          break;
        case 3:
          fill(random(255),random(255),random(255));
          quad(55+C,25+R,85+C,55+R,55+C,85+R,25+C,55+R);
        break;
      }
      x = int(random(1,4));
      switch(x){
        case 1:
          fill(random(255),random(255),random(255));
          square(35+C,35+R,40);
          break;
        case 2:
          fill(random(255),random(255),random(255));
          circle(55+C,55+R,40);
          break;
        case 3:
          fill(random(255),random(255),random(255));
          quad(55+C,35+R,75+C,55+R,55+C,75+R,35+C,55+R);
        break;
      }
    }
  }
}


void draw(){

  
  //x = int(random(1,4));
  
  //int x = opcion[0]; //rando

  //rect(50,5,10,50);
  //fill(255);
  //circle(160,55,100);
  //fill(0,0,255);
  //circle(160,55,80);
  //fill(255);
  //rect(155,5,10,50);
  //fill(189,236,182);
  //circle(265,55,100);
  //fill(253,253,150);
  //square(225,15,80);
  
  
}
