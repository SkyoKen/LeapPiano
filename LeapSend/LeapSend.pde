//LeapMotion
import de.voidplus.leapmotion.*;
LeapMotion leap;

//LeapPiano
LeapPiano lp;
int t;
void setup() {
  size(800, 500);
  background(255);
t=0;
  //LeapMotion
  leap = new LeapMotion(this);
  
  //LeapPaino
  lp=new LeapPiano(leap);
}
void draw() {
  lp.draw();

}
//通信テスト
void keyPressed() {
  //1から7までじゃなければ、return
  if (!(key>='0'&&key<='7'))return;
  lp.send(Integer.toString(key-'0'));
}
void leapOnInit() {
  println("Leap Motion Init");
}
void leapOnConnect() {
  println("Leap Motion Connect");
}
void leapOnDisconnect() {
  println("Leap Motion Disconnect");
}
void leapOnExit() {
  println("Leap Motion Exit");
}
