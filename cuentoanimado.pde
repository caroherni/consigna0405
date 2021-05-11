PImage imgOriginal;
PImage imgEditada;
PImage imgLogo;
PFont tipografiaTitulo;
PFont tipografiaSubtitulo;
PFont tipografiaBajada;


int mitadPantalla;
int posYSubtitulo = 500;

void setup(){
  size(600,250);
  frameRate (10);
  imgOriginal = loadImage("cuentooriginal.jpg");
  imgEditada = loadImage("cuentoreversion.jpg");
imgLogo = loadImage ("logocuento.png");

  tipografiaTitulo = loadFont("Annabelle-25.vlw");
  tipografiaSubtitulo = loadFont("Annabelle-10.vlw");
  tipografiaBajada = loadFont ("Annabelle-6.vlw");
    mitadPantalla = width/2;
 
}

void draw(){
  image (imgOriginal,0,0);
   image (imgEditada,mitadPantalla,0);
   
   fill(255);
  textFont (tipografiaTitulo);
  text  ("¡Ponte mis gafas!",mitadPantalla+60,45);
    
    textFont (tipografiaBajada);
  text("texto\nAutora Soto Díaz\nJosé Losa Pérez",535,150);
    text("Ilustraciones\nEsther Voltá",535,180);
  
  fill(0);
   textFont (tipografiaSubtitulo);
  text  ("Cuento sobre el acoso escolar",mitadPantalla+80,60);
  

  
}
void mouseMoved(){
     
   if(mouseY < 350){
        //Aproximadamente, me muevo en la araña
        posYSubtitulo = posYSubtitulo - 1;  
   }
  fill(252,199,170);
     noStroke();
             ellipse(mitadPantalla+110,145,45,44);
             ellipse(mitadPantalla+170,155,47,41);


   } 
   
   void mouseClicked(){
     
   image (imgLogo,500,183);
   }
