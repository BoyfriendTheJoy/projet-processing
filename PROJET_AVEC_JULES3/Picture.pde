class Picture {

  PImage img;

  Picture(String name) {//constructeur doit avoir le même nom que la classe/arguments (String, name)-> le name est remplacé par celui donné dans la ligne d'en dessous)
    img = loadImage(name);
    imageMode(CENTER);
    }

    void display(float ex, float wy) { //void display est une fonction de dessin/ arguments (float ex, float wy)-> coordonnées

      image(img, width/2, height/2);// affiche l'image au point de coordonnée xpos,ypos,0 en rajoutant deux arguments on rajoute la taille de l'image
    }
}

