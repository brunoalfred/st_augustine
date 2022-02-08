import 'package:equatable/equatable.dart';
import 'package:yaml/yaml.dart';

class Song extends Equatable {
  const Song({
    required this.id,
    required this.title,
    required this.chorus,
    required this.verses,
  });

  factory Song.fromYaml(YamlMap json) {
    return Song(
      id: json['id'] as int,
      title: json['title'] as String,
      chorus: json['chorus'] as String,
      verses: json['verses'] as YamlList,
    );
  }

  final int id;
  final String title;
  final String chorus;
  final YamlList verses;

  @override
  List<Object?> get props => [id, title, chorus, verses];
}
