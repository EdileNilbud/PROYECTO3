/*
Es lo que se va a visualizar en el monitor.
Contiene las cuatro pantallas: Inicio,selección de personajes, pelea y ganador.
*/
class PANTALLA{
  //Fondo. RGB.
  float R;
  int G;
  int B;
  //Numero de pantalla a dibujar.
  int ID;
  // Metodo de la clase de pantalla.  
  PANTALLA(int numerodepantalla){
    ID=numerodepantalla;
  }//Fin de constructor.
  
  void dibujarPantalla(){
  
    switch(ID){
      case 0: 
        pantalladeinicio();
      break;
      case 1:
        pantalladehistoria();
      case 2:
        seleccionador();
      break;
      case 3:
        pantalladepelea();
      break;
      case 4:
        pantallaganador();
      break;
      
    }
  
  }//Fin de dibujar pantalla.
  
  void cambiarPantalla(int nuevapantalla){
    ID= nuevapantalla; 
  }
  
  void pantalladeinicio(){ //PANTALLA DE INICIO.
  background(20);
  
  float R = random(190,255);
  // 1°círcurlo(blanco).
    fill(255);
    noFill();
    strokeWeight(13);
    stroke(255,255,255,200);
    ellipse(320,240,100,100);
  
  //2°círclo (rojo);
  
    fill(0,0,0);
    noFill();
    strokeWeight(19);
    stroke(255,50,50,200);
    ellipse(320,240,175,175);
  
  //3°círculo (verde).
    strokeWeight(23);
    stroke(0,255,0,200);
    ellipse(320, 240, 300, 300);
     
  //4°círculo (azul).
    strokeWeight(30);
    stroke(0,0,255,200);
    ellipse(320, 240, 425, 425);
  
  //*************************************************************
  fill(10,R);//uso de R=random. 
  stroke(2);
  noStroke();
  rect(0,0,640,480);
  //*************************************************************
  fill(255);
  noFill();
  strokeWeight(1);
  stroke(255,255,255);
  ellipse(320,240,100,100);
  
  fill(0,0,0);
  noFill();
  strokeWeight(3);
  stroke(255,0,0);
  ellipse(320,240,175,175);
  
  fill(0,0,0);
  noFill();
  strokeWeight(6);
  stroke(0,255,0);
  ellipse(320, 240, 300, 300);
  
  fill(0,0,0);
  noFill();
  strokeWeight(9);
  stroke(0,0,255);
  ellipse(320, 240, 425, 425);
  
  //************************************************************
  
  textSize(20);
  fill(255,255,255);
  text("Preciona espacio",10,30);
  text("para iniciar.",10,50);
  
  fill(11);
  noStroke();
  rect(80,210,500,60);
  fill(189,13,228,50);
    
  /*strokeWeight(3);
  stroke(123,13,204);
  triangle(310,260,310,220,340,240);*/
 
  textSize(20);
  fill(255);
  text("DIALÉCTICA DE LOS COLORES",177,250); //título.
 
 
  } //Fin de pantalla de inicio.
  //Segunda
  
  void pantalladehistoria(){
  
    background(0);
    PImage historia;
    historia = loadImage("historia.png");
    image (historia,0,0);
    
    textSize(20);
    fill(random(100,200),random(10,120),random(0,225));
    text ("preciona espacio para continuar",111,550);
    
   
  }
  
  
  /*TERCERA pantalla en donde se seleccionarán los personajes*/
  void seleccionador(){
    background(10);
     PImage seleccioon  ;
    
    seleccioon = loadImage("seleccioon.png");
    image (seleccioon,0,0);
    
    fill(100,100,100,50);
    stroke(150);
    
    switch(personajeseleccionado){
    case 0:
      rect(5,5,115,115);
      break; 
    case 1:
      rect(142,90,115,115);
      break; 
    case 2:
      rect(270,170,115,115);
      break; 
    case 3:
      rect(142,272,115,115);
      break; 
    case 4:
      rect(5,360,115,115);
      break; 
    }
    
    //aquí solicito los dibujos (se mandan llamar las funciones).
    missSafiro(20,10);
    docMagenta(150,100);
    lordEscarlata(275,180);
    srSun(150,280);
    srtaJade(15,370);
    
    
    textSize(25);
    fill(255);
    text("SELECCIÓN DE PERSONAJES", 300, 50);
    textSize(20);
    text("A y D para desplazar.", 400,210);
    text("S para seleccionar.",400,235);
  } //Fin de la segunda pantalla (selección de personajes).
  
 //CUARTA pantalla. Pantalla de pelea.
  void pantalladepelea(){
    
    background(20);
    barradevida(jugador1.vida,jugador2.vida);
    
    jugador1.dibujarPersonaje();
    jugador2.dibujarPersonaje();
    
    textSize(13);
    fill(255);
    text("Atacar: \"Q\" o \"q\"",15,195);
    text(jugador1.nombre,15,210);
    text(jugador2.nombre,535,280);
    text("Atacar: \"Z\" o \"z\"",535,295);
    
  }//Fin de pantalla de pelea.
  
  //QUINTA pantalla. Pantalla de ¡¡¡¡¡¡¡¡¡¡GANADOR!!!!!!!!!!!
  void pantallaganador (){
    background(random(0,255),random(0,255), random(0,255));
    
    fill(20);//uso de R=random. 
    stroke(2);
    noStroke();
    rect(240,100,181,270);
    
    if(ganador == 1){
      jugador1.dibujarPersonaje(ganador);
    }
    
    if(ganador == 2){
      jugador2.dibujarPersonaje(ganador);
    }
    fill(255);
    textSize(13);
    text("Precione \"R\" o \"r\" para reiniciar.",430,455);
  
  }


  
}//Fin de la clase pantalla.


void barradevida(int largobarraizquierda, int largobarraderecha){

    noFill();
    strokeWeight(12);
    stroke(255,50,50);
    rect(10,225,largobarraizquierda,30);
    
    strokeWeight(12);
    stroke(255,50,50);
    rect(630,225,-largobarraderecha,30);
    
    //***************************** capa que hace que vibre.
    float R = random(190,255);
    fill(10,R);//uso de R=random. 
    stroke(2);
    noStroke();
    rect(0,0,640,480);
   //******************************
    
    strokeWeight(3);
    stroke(255,0,0);
    rect(10,225,largobarraizquierda,30);
    
    strokeWeight(3);
    stroke(255,0,0);
    rect(630,225,-largobarraderecha,30);
    
    

}
