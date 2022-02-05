import 'package:flutter/material.dart';
import 'package:st_augustine/features/lyrics/presentation/pages/lyrics_screen.dart';
import 'package:st_augustine/features/playlist/presentation/widgets/songs_list.dart';

class PlaylistSceen extends StatelessWidget {
  const PlaylistSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF1D1F24),
        elevation: 0,
        title: const Text(
          'Playlist',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1D1F24),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SongsList()),
    );
  }
}
