import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus

Ball maballe;
Picture pig;

ArrayList <Ball> baltab;
ArrayList <Picture> pictab;
float couleur;

void setup() {

  size(800, 600, P2D);
  background(0);
  MidiBus.list(); 
  myBus = new MidiBus(this, 1, 4);
  baltab = new ArrayList();// initialisation du tableau balls
  pictab = new ArrayList();
  pig = new Picture("head2.jpg");
}

void draw() {
  background(0);
  int channel = 0;
  int pitch = 64;
  int velocity = 127;
  int number = 0;
  int value = 90;
  for (int i=0; i< baltab.size (); i++) {
    Ball b = baltab.get(i);
    b.display(couleur);
  }
  for (int j=0; j<pictab.size (); j++) {
    Picture p = pictab.get(j);
    p.display(width/2, height/2);
  }
  //myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  //delay(200);

  //myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff

  //myBus.sendControllerChange(channel, number, value); // Send a controllerChange
  //delay(2000);
}
void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

  if ( channel == 0 && pitch == 60 ) {
    baltab.add(new Ball());
  }
else if (channel == 1 && pitch == 67) {
  pictab.add(pig);

}
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);

  if (channel == 0 && pitch == 60 && baltab.size()> 0 ) {
    baltab.remove(0);
  }
else if (channel == 1 && pitch == 67 &&pictab.size()>0) {
  pictab.remove(0);

}
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);

if (channel == 0 && number == 1) {
  float couleur = value;
}
}


