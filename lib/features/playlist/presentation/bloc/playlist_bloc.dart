import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistInitial()) {
    on<PlaylistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
