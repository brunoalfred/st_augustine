import 'package:flutter/material.dart';
import 'package:st_augustine/features/lyrics/presentation/presentation.dart';

class SongItem extends StatelessWidget {
  const SongItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (context) => const LyricsScreen(),
            ),
          );
        },
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
      ),
    );
  }
}
