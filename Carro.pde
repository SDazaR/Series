public class Carro{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float z;
  
  Carro(color colorCarro, float xposicion, float yposicion, float velocidad){
  c=colorCarro;
  xpos=xposicion;
  ypos=yposicion;
  xspeed=velocidad;
 
  }
  
  void display(){
  strokeWeight(xspeed+1);
  stroke(0,0,180);
  fill(c);
  ellipse(xpos+20,ypos+20,70,height/n);
  }
  void move(){
     xpos=xpos+xspeed;
     if(xpos>width){
       xpos=0;
     }
  }}
  