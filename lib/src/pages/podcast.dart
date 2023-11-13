import 'package:flutter/material.dart';

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Podcast(),
    );
  }
}

class Podcast extends StatefulWidget {
  @override
  _PodcastPlayerWidgetState createState() => _PodcastPlayerWidgetState();
}

class _PodcastPlayerWidgetState extends State<Podcast> {
  bool isPlaying = false;
  double sliderValue = 0.0;
  double maxSliderValue = 100.0;

  void _togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void _onSliderChanged(double value) {
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey, 
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Center(
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                size: 72.0,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Podcast de examen',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Descripción del podcast',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Slider(
            value: sliderValue,
            onChanged: _onSliderChanged,
            max: maxSliderValue,
            min: 0.0,
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: _togglePlayPause,
                iconSize: 72.0,
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
