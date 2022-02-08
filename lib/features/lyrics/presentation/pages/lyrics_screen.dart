import 'package:flutter/material.dart';
import 'package:tenzii/features/playlist/data/models/song.dart';


class LyricsScreen extends StatelessWidget {
  const LyricsScreen({Key? key, required this.song}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF212328),
        elevation: 0,
        title: Text(song.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color(0xFF212328),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20),
          itemBuilder: (BuildContext contex, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      '[ Verse ${index + 1} ]',
                      style: const TextStyle(
                        color: Color(0xFFDD7A21),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    song.verses[index]['verse'].toString(),
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: song.verses.length,
        ),
      ),
    );
  }
}
