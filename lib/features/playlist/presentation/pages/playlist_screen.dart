import 'package:flutter/material.dart';
import 'package:st_augustine/features/playlist/presentation/presentation.dart';

class PlaylistSceen extends StatelessWidget {
  const PlaylistSceen({Key? key}) : super(key: key);

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
    return Scaffold(
      backgroundColor: const Color(0xFF1D1F24),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.network(
                      'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/76/67/94/76679484-e249-86a5-f85d-b1fa0b6a6fbf/195375061371.png/400x400cc.jpg',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Wewe ni mungu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Kizito makuburi',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        // add a like icon and a dislike icon
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.2,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.thumb_up),
                      color: Colors.white,
                      onPressed: () => debugPrint('Like'),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 2,
            color: Color(0xFF24262A),
          ),
          itemCount: songs.length,
        ),
      ),
    );
  }
}
