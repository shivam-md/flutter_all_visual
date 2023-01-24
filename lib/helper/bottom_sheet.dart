import 'package:flutter/material.dart';

class PushBottomSheet extends StatelessWidget {
  const PushBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(width/1.2,height/15),
    foregroundColor: Colors.deepPurple,
    textStyle: const TextStyle(fontSize:20, fontWeight: FontWeight.w900),),
      onPressed: () {
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share'),
                    ),
                    ListTile(
                      leading: Icon(Icons.call),
                      title: Text('Phone'),
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Message'),
                    ),
                  ]
              );
            }
        );
      },
      child: const Text('BottomSheet'),
    );
  }
}
