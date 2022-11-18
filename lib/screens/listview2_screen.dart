import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Targaryen',
    'Stark',
    'Lannister',
    'Baratheon',
    'Tyrell'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
          //backgroundColor: Colors.amberAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(options[index]),
                  onTap: () {
                    final casa = options[index];
                    print(casa);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
