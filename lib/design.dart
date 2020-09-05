import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

AudioPlayer audioPlayer = AudioPlayer();
bool playing = false;

play() async {
  int result = await audioPlayer.play(
      'https://raw.githubusercontent.com/Dakshjain1/photo/master/final.mp3');
  if (result == 1) {
    playing = true;
  }
}

pause() async {
  playing = false;
  audioPlayer.pause();
}

class Design extends StatelessWidget {
  var img = new DecorationImage(
    image: new AssetImage('images/1.jpg'),
    fit: BoxFit.fill,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Center(
          child: Text(
            'Motivation Player',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: img,
        ),
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              highlightColor: Colors.red.shade900,
              elevation: 10,
              onPressed: () => Navigator.pushNamed(context, 'video'),
              child: Text(
                'Video Player',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            RaisedButton(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              highlightColor: Colors.red.shade900,
              elevation: 10,
              onPressed: play,
              child: Text(
                'Audio Player',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton.icon(
              highlightColor: Colors.black,
              onPressed: pause,
              icon: Icon(Icons.pause_circle_outline),
              label: Text(
                'Pause',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
