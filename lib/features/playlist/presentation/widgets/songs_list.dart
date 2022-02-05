import 'package:flutter/material.dart';
import 'package:st_augustine/features/lyrics/presentation/presentation.dart';
import 'package:st_augustine/features/playlist/presentation/widgets/song_item.dart';

class SongsList extends StatelessWidget {
  const SongsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var songs = <String>[
      'song1',
      'song2',
      'song3',
      'song4',
      'song5',
      'song6',
      'song7',
      'song8',
      'song9',
      'song10'
    ];
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return SongItem(); },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 2,
        color: Color(0xFF24262A),
      ),
      itemCount: songs.length,
    );
  }
}
