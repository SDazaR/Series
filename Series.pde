  int n= 8;
  Perrin perr;
  Sequence sequ;
  Carro [] car= new Carro[n];
  

void setup() {
  size(720,640);
  background(0,0,180);
  perr = new Perrin(); 
   for(int i=1;i<=n;i++){
  car[i-1] = new Carro(color(0,(255*perr.compute(i))/perr.compute(n),0),1,(i-1)*(height/n),perr.compute(i));
   }
}

void draw(){

  if(key=='c'){
  println("\n",perr.author());
  println(perr.description());
  println("El ",n,"º num  o de Perrin es ", perr.compute(n));
  printArray(perr.toArray(n));
  for(int i=1;i<=n;i++){
   car[i-1].move();
  car[i-1].display();
      }


 }
}