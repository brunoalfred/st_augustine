import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tenzii/features/playlist/data/models/song.dart';
import 'package:tenzii/features/playlist/presentation/widgets/song_item.dart';
import 'package:yaml/yaml.dart';

class SongsList extends StatelessWidget {
  const SongsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: got the Path using rootBundle.
    // FIMXE: yml file is read as string s but not getting converted to ymlList

    var items = YamlList();

    Future<String> loadAsset(String path) async {
      return rootBundle.loadString(path);
    }

    loadAsset('assets/songs.yml').then((s) {
      // print(s);
      items = loadYaml(s) as YamlList;
    });

    // print(items);
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
