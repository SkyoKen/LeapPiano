

public class Piano {

  private MidiBus mBus;                // The MidiBus object

  private int instrument;              // MIDI program change: 0 = Acoustic Grand Piano

  private byte data[] = new byte[2];   // status byte + data byte

  private int channel;                 //MIDI channel
  private int velocity;                //MIDI velocity

  private int nextPitch;

  public Piano(MidiBus mBus) {

    this.instrument = 0;

    MidiBus.list();             // lists available synthesizers
    this.mBus=mBus;
    //this. mBus = new MidiBus(this, -1, "Microsoft GS Wavetable Synth");
    noLoop();

    this.data[0]=(byte)0xC0;    // status byte: C0hex = MIDI program change for channel 0
    this.data[1]= (byte)0;      // data byte: 0 = Acoustic Grand Piano

    this.mBus.sendMessage(data); // sends the MIDI program change message

    this.channel = 0;           // 0 <= MIDI channel <= 15
    this.velocity = 100;        // 0 <= MIDI velocity <= 127

    this.nextPitch = 0;
  }


  public void  play(int num) {
    
    this.nextPitch = num + 60;
    print(nextPitch + " \n");
    mBus.sendNoteOn(channel, nextPitch, velocity); // Send a Midi noteOn
  }
}
