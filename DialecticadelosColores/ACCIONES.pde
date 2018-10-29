/*
Este módulo está dedicado a la interacción entre el jugador y el juego a través del teclado. 
Este módulo lo requieren todas las pantallas.
*/
void keyPressed(){ //Función que se manda llamar cada vez que se utilizará el teclado o el mouse.

  switch (pantallas.ID){
    case 0: //acción de cambio de pantalla a historia.
      if (key == ' '){
        pantallas.cambiarPantalla(1);
      }
    break;
    
    case 1: //historia.
    if (key == ' '){
     pantallas.cambiarPantalla(2);
    }
    break;
    
    case 2: //acción de seleccion de personaje.
    
      if (key == 'd' || key == 'D'){ 
        personajeseleccionado++;
        if (personajeseleccionado > 4){
          personajeseleccionado = 0;
        }
      }
      
      if (key == 'a' || key == 'A'){
        personajeseleccionado--;
        if (personajeseleccionado < 0){
          personajeseleccionado = 4;
        }
      }
      if (key == 's' || key == 'S'){
        if(njugador==1){
          jugador1.inicializarPersonaje(personajeseleccionado,njugador);
          njugador = 2;
          personajeseleccionado = 0;
        } else {
          jugador2.inicializarPersonaje(personajeseleccionado,njugador);
          njugador = 1;
          pantallas.cambiarPantalla(3);
        }
        
      }
    break;
    case 3: //acciones de batalla. 
      if(njugador == 1){
        if(key == 'Q' || key == 'q'){
          jugador2.disminuirVida(jugador1.ataque);
          njugador=2;
        }
      }
      if(njugador == 2){
        if(key == 'Z' || key == 'z'){
          jugador1.disminuirVida(jugador2.ataque);
          njugador=1;
        }
      }
      
      if(jugador1.vida <= 0){
        ganador = 2;
        pantallas.cambiarPantalla(4);
      }
      if(jugador2.vida <= 0){
        ganador = 1;
        pantallas.cambiarPantalla(4);
      }
       
    break;
    case 4:
    
      if(key == 'R' || key == 'r'){
        personajeseleccionado=0;
        pantalla=0;
        njugador=1;
        pantallas.cambiarPantalla(0);
      }
    
    
    break;
  
  }
  
  


}
