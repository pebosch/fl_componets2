import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipo1(),
            SizedBox(height: 10),
            CustomCardTipo2(
              nombre: 'Final Fantasy 7',
              imageUrl: 'https://images7.alphacoders.com/928/928770.jpg',
            ),
            SizedBox(height: 10),
            CustomCardTipo2(
              nombre: 'Age of Empires',
              imageUrl:
                  'https://microsofters.com/wp-content/uploads/2018/02/AOEDE_KeyArt_Horiz_RGB_Final.jpg',
            ),
            SizedBox(height: 10),
            CustomCardTipo2(
              nombre: 'Monkey Island',
              imageUrl:
                  'https://expansivedlc.com/wp-content/uploads/2022/08/secret-of-monkey-island-special-dosgamers-2.jpg',
            ),
            SizedBox(height: 10),
            CustomCardTipo2(
              imageUrl:
                  'https://sm.ign.com/ign_es/screenshot/default/metal-gear1_s2be.jpg',
            ),
            SizedBox(height: 10),
            CustomCardTipo2(
              imageUrl:
                  'https://cdn-ext.fanatical.com/production/product/1280x720/fa491738-d6fa-4ae9-8167-bd6bd14ca640.jpeg',
            ),
          ],
        ));
  }
}
