import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatares'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: const CircleAvatar(
              child: Text('JN'),
              backgroundColor: Colors.lightGreenAccent,
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 120,
        backgroundImage: NetworkImage(
            'http://pm1.narvii.com/7268/29d5082ede36f647439bd3174df4311b57e12256r1-700-430v2_uhq.jpg'),
      )),
    );
  }
}
