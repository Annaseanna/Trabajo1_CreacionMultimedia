void setup(){
  size(530,530);
  background(0);
  
}

int[] opcion = {1,2,3,4};
void draw(){
  int x = opcion[0]; //random
  switch(x){
    case 1:
      fill(255);
      square(5,5,100);
      break;
    case 2:
      fill(255);
      circle(55,55,100);
      break;
    case 3:
      fill(255);
      quad(55,5,105,55,55,105,5,55);
    break;
    
  }
  //int x = opcion[0]; //rando
  //fill(255,0,0);
  //square(15,15,80);
  //fill(255);
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
