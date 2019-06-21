//UDP
import hypermedia.net.*;

public class LeapPiano {
  private LeapMotion leap;
  private UDP udp;

  private final String IP = "255.255.255.255";      //IPアドレス
  private final int PORT =53131;                    //ポート番号
  String msg="";                                    //送信メッセージ
  
  public LeapPiano(LeapMotion leap) {

    //LeapMotion
    this.leap=leap;

    //UDP
    this.udp = new UDP(this);
  }
  //送信
  void send(String s) {
    this.udp.send(s, IP, PORT);
  }
  
  //処理
  public void draw() {

    
    //背景
    background(255);
    
    for (Hand hand : this.leap.getHands ()) {

      //手の描画
      hand.draw();
      //ジャスチャーの検出
      check(hand);
    }
  }
  
  //ジャスチャーの検出
  void check(Hand hand) {
    String finger="";
    for(Finger f: hand.getFingers())finger+=f.isExtended()?1:0;
    switch(finger) {
      
      //stop
    case "00000":
      msg="";
      break;

    case "01000":
      msg="1";
      break;

    case "01100":
      msg="2";
      break;

    case "00111":
      msg="3";
      break;

    case "01111":
      msg="4";
      break;

    case "11111":
      msg="5";
      break;

    case "10001":
      msg="6";
      break;

    case "11000":
      msg="7";
      break;

    default:
      msg="";
      break;
    }

    this.send(msg);
  }
}
