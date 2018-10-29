/*
Contiene la clase del personaje la cual va a ser usada para las cinco figuras.
Al final se encuentran las funciones que dibujan al personaje. 
*/

class PERSONAJE {
  
  //Atributos del personaje. (CARACTERISTICAS).
  int ID;               // Identificador del personaje.
  int vida;             //Es la cantidad vida que tiene el personaje.
  int ataque;           //Potencia con la que se puede atacar.
  int numerodejugador; //identifica quien está jugando, es decir, jugador 1 y/o jugador 2.
  String nombre;
  
  //Métodos de la clase. (ACCIONES).
  //Constructor de la clase (Lleva el mismo nombre que la clase).
  PERSONAJE (){
    vida = 300;
  }
  //Se da caracteristicas al personaje. Dependiendo de cual se selecciona.
  void inicializarPersonaje(int ID_,int numerodejugador_){
    ID= ID_;
    ataque=(int)random(15,20);
    numerodejugador=numerodejugador_;
    vida = 300;
    
    switch (ID_){

    case 0: nombre = "Miss Safiro";
    break;
    case 1: nombre = "Dr. Magenta";
    break;
    case 2: nombre = "Lord Escarlata";
    break;
    case 3: nombre = "Sr. Sun";
    break;
    case 4: nombre = "Srta. Jade";
    break;
    }
    
  }
  
  //Metodo para disminuir vida.
  void disminuirVida(int golpe){
    vida=vida-golpe;
  }
  
  //Este método dibuja al personaje en la pantalla de peleas.
  //Dependiendo del número de jugador cambia la posición en la pantalla arriba o abajo (eje Y).
  void dibujarPersonaje(){
    int y;        //Variable utilizada para colocar al personaje arriba o abajo de la pantalla. 
    if(numerodejugador == 1){
      y = 50;
    } else{
      y = 320;
    }
    
    switch (ID){
      case 0: missSafiro(275,y);
      break;
      case 1: docMagenta(275,y);
      break;
      case 2: lordEscarlata(275,y);
      break;
      case 3: srSun(275,y);
      break;
      case 4: srtaJade(275,y);
      break;
    
    }
  }
    
    void dibujarPersonaje(int ganador_){
    
    if(ganador_ == 1){
      textSize(20);
      fill(255);
      text("GANÓ jugador1: ",252,150);
      text(jugador1.nombre,270,205);
    } else{
      textSize(20);
      fill(255);
      text("GANÓ jugador2: ",252,150);
      text(jugador2.nombre,270,205);
    }
    
    switch (ID){
      case 0: missSafiro(275,250);
      break;
      case 1: docMagenta(275,250);
      break;
      case 2: lordEscarlata(275,250);
      break;
      case 3: srSun(275,250);
      break;
      case 4: srtaJade(275,250);
      break;
    }
  }//Fin de dibujar personaje.
  
  
} //Fin de la clase personaje.


//Funciones para dibujar a los personajes.

void docMagenta(int x, int y){ //X, Y son los valores, que se utilizarán para mover nuestro dibujo de lugar. Estos valores se pasan como ARGUMENTOS.
  pushMatrix();
  translate(x,y);
  fill(255,2,56,50);
  stroke(255,0,56);
  noStroke();
  triangle(1,1,100,1,50,100);
  
  fill(255,42,82);
  stroke(255,100,86);
  noStroke();
  triangle(5,5,95,5,50,50);
  
  fill(181,30,58);
  stroke(255,0,86);
  noStroke();
  triangle(50,55,95,10,50,95);
  popMatrix();
}

 /*EstrellaVerde*/
void srtaJade(int x, int y){
 pushMatrix();
 translate(x,y);
  fill(64,158,24);
  stroke(255,0,56);
  noStroke();
  triangle(1,20,100,20,50,100);
  
  fill(111,222,52);
  stroke(0,255,0);
  noStroke();
  triangle(50,1,1,80,100,80);
  
  fill(111,200,52);
  stroke(255);
  noStroke();
  triangle(10,25,90,25,50,90); 
  popMatrix();
}

/*círculo amarillo*/
void srSun(int x, int y){
 pushMatrix();
 translate(x,y);  
  fill(255,222,52);
  noStroke();
  ellipse(50,50,100,100);
  
  fill(252,252,14);
  noStroke();
  ellipse(55,55,80,80);
 popMatrix();
}


/*Rectangulos azules*/
void missSafiro(int x, int y){
 pushMatrix();
 translate(x,y);
  fill(0,0,255);
  noStroke();
  rect(1,1,80,105);
  
  fill(13,67,171);
  noStroke();
  rect(5,5,20,100);
  
  fill(0,80,255);
  noStroke();
  rect(15,40,60,60);
 popMatrix();
}

/*Figura irregular(rojo) utilizamos bezier 
para generar cuatro puntos y con base a ellos se crea la curva*/
void lordEscarlata(int x, int y){
 pushMatrix();
 translate(x,y);
  fill(255,0,0);
  noFill();
  strokeWeight(2);
  stroke(255, 0, 0);
  bezier(21,52,5,14,32,6,44,29);
  bezier(44,29,54,29,62,23,68,18);
  bezier(68,18,85,7,95,36,75,50);
  bezier(75,50,90,72,75,87,51,71);
  bezier(51,71,48,75,51,81,57,84);
  bezier(57,84,32,87,19,64,21,52);
 popMatrix();
}
