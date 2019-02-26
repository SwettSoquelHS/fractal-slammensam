void setup(){
  size(1024,576);
  rectMode(CENTER);
}

void draw(){
  background(0);
  myFractal(500,height/2,150); 
}

void myFractal(int x, int y, int size){
   rect(x, y, size, size);
   stroke((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
   if(size > 10){
     delay(5);
     myFractal(x-size/2,y,size/2);
     myFractal(x+size/2,y,size/2);
     myFractal(x,y-size/2,size/2);
     myFractal(x,y+size/2,size/2);   
 }
   
}
