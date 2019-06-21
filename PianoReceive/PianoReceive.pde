//Piano
import themidibus.*; 
MidiBus mBus;
Piano piano;

//UDP
import hypermedia.net.*;
import controlP5.*;
UDP udp;
final String IP = "";
final int PORT = 2222;

void setup() {
  //fullScreen();
  size(800, 500);
  background(255);

  //Piano
  mBus = new MidiBus(this, -1, "Microsoft GS Wavetable Synth");
  piano= new Piano(mBus);
  
  //UDP
  udp = new UDP(this,53131);
  udp.listen( true );
  
}
void receive( byte[] data, String ip, int port ) {
  String message = new String( data );
  println( "receive: \""+message+"\" from "+ip+" on port "+port );
  piano.play(Integer.parseInt(message));
}
void keyPressed() {
  piano.play(key-'0');
}
void draw() {

  background(255);
}
