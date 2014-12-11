class Ball {
  float xpos, ypos;
  float xstep, ystep;

  Ball() {
    xpos = width/2;
    ypos = height/2;
   
 
  }
  void display(float c) { //void display est une fonction de dessin
   fill(map(c,0,30,0,255));
    ellipse(xpos, ypos, 500, 500);
    
  }
}
