import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Aquí va el título'),
          subtitle: Text(
              'Exercitation eu magna consectetur magna adipisicing nulla. Consequat culpa dolore qui id reprehenderit sint voluptate amet et nostrud ea pariatur. Dolore consectetur reprehenderit ut do sit labore laborum et excepteur esse. In ex qui sunt duis irure. Sunt non sunt adipisicing duis ullamco Lorem magna incididunt veniam adipisicing ex irure.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        )
      ],
    ));
  }
}
