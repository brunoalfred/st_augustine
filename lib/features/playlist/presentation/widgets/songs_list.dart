import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tenzii/features/playlist/data/models/song.dart';
import 'package:tenzii/features/playlist/presentation/widgets/song_item.dart';
import 'package:yaml/yaml.dart';

class SongsList extends StatelessWidget {
  const SongsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: get absolute path to songs.yml 
    // FIMXE: remove the hardcoded path

    final items = loadYaml(
      File('/Users/macbookair/Code/GitHub/brunoalfred/tenzii/assets/songs.yml').readAsStringSync(),
    ) as YamlList;

// create list named songs
    final songs = <Song>[];

// iterate over items in content list
    for (final item in items) {
      final song = Song.fromYaml(item as YamlMap);
      songs.add(song);
    }

    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return SongItem(
          song: songs[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 2,
        color: Color(0xFF24262A),
      ),
      itemCount: songs.length,
    );
  }
}
