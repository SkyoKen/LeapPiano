# LeapPiano
### 実行
1. LeapMotionが接続している状態で、`LeapSend.exe`と`PianoReceive.exe`を起動する。
2. `LeapSend.exe`から特定のジャスチャーで、情報を`PianoReceive.exe`に送ってピアノを弾く。  
* ~~注意：変にならないため、送った情報が一個前のと同じの場合（前後のジャスチャーが同じ）は、音が鳴らない。~~  
* 注意：一秒ごとで情報を送って音を流す。
* キーボードで 1, 2, 3, 4, 5, 6, 7 を押して、音が鳴るかどうか、確認できる。
### ジャスチャー
一つの手だけで操作したいから、中国の数字の数え方で設定した．
* 以下の七つのジャスチャーでピアノをピアノを弾く。  
*  順番で do, re, mi, fa, so, la, si と対応する。  
![1](https://github.com/SkyoKen/LeapPiano/blob/master/image/1.jpg)
![2](https://github.com/SkyoKen/LeapPiano/blob/master/image/2.jpg)
![3](https://github.com/SkyoKen/LeapPiano/blob/master/image/3.jpg)
![4](https://github.com/SkyoKen/LeapPiano/blob/master/image/4.jpg)
![5](https://github.com/SkyoKen/LeapPiano/blob/master/image/5.jpg)
![6](https://github.com/SkyoKen/LeapPiano/blob/master/image/6.jpg)
![7](https://github.com/SkyoKen/LeapPiano/blob/master/image/7.jpg)
### [MiniPiano（LeapMotion外す）](https://github.com/SkyoKen/MiniPiano)
