//Variables globales. (Las variables globales funcionan en todo el programa.)

int personajeseleccionado;
int pantalla;
int njugador; //numero de jugador que se está seleccionando o en turno.
int ganador;
PERSONAJE jugador1; //Declaración del objeto de la clase. 
PERSONAJE jugador2;
PANTALLA pantallas;



void setup(){
  size(640,480);
  personajeseleccionado=0;
  pantalla=0;
  njugador=1;
  jugador1 = new PERSONAJE();
  jugador2 = new PERSONAJE();
  pantallas = new PANTALLA(0);

}


void draw(){

  pantallas.dibujarPantalla();
 
 
 
}
