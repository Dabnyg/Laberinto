import ddf.minim.*;
 
 Minim minim;
 AudioPlayer Audio;

PImage img;
int coloor;

int valor, pX=225, pY=0;


void setup(){
  size(500,500);
  minim = new Minim(this);
  Audio = minim.loadFile("sonido.wav");
//el nombre de la imagen varia segun como la hayas guardado
  img=loadImage("maze.jpg"); 
}

void draw(){
  if(Audio.isPlaying()  ){
   text("haga un click para stop", 10, 20); 
    
  }
  else
  {
    text("haga un click para Play", 10, 20);
  }
  image(img,0,0);
//el personaje o la pelotita  
  noFill();
  strokeWeight(7);
  stroke(#F01B85);
  ellipse(pX,pY, 25,25);
//el pixel que va a ir leyendo el color ira en medio de el personaje
   coloor= get(pX,pY);
  println(coloor);

//el valor que dice ahi todo raro, segun el get decia que ese color tenian los muritos
if (coloor==-16777216){
   //aqui esta otra vez la posicion inicial de X y Y
    pX=225;
    pY=0;
  
   
   }
    if(pX==245 & pY==500){
    textSize(120);
    fill(255,198,0);
    text("¡Ganaste!",0,320);
    }

}

//los numeros pueden bajarle para mas lento, subirle para mas rapido .-.
void mousePressed(){
if(Audio.isPlaying() ){
    Audio.pause();
  }
  else
  {
    Audio.play();
  }  
  


}
void keyPressed(){
  
  if (keyCode==UP){
     
    pY=pY-5;
  }
  if (keyCode==DOWN){
 
    pY=pY+5;
  }
  if (keyCode==RIGHT){
    
    pX=pX+5;
  }
  if (keyCode==LEFT){
    
    pX=pX-5;
  }

}
