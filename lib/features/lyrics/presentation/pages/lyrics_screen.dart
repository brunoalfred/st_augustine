import 'package:flutter/material.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF212328),
        elevation: 0,
        title: const Text('Song Name'),
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      '[ Verse 1 ]',
                      style: TextStyle(
                        color: Color(0xFFDD7A21),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    ' Nimekuwa wako wewe \n Damu imenisafisha; \n Sifa kwa mwana kondoo. ',
                    style: TextStyle(color: Colors.grey[300], fontSize: 25),
                  ),
                ],
              ),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
