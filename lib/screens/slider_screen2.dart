import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Slider2Screen extends StatefulWidget {
  const Slider2Screen({Key? key}) : super(key: key);

  @override
  State<Slider2Screen> createState() => _Slider2ScreenState();
}

class _Slider2ScreenState extends State<Slider2Screen> {
  double _sliderValue = 225;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
                activeColor: AppTheme.primary,
                min: 50,
                max: 400,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            Image(
              image: const NetworkImage(
                  'https://static.wikia.nocookie.net/vsbattles/images/0/0d/Sandor_Clegane_%28GoT%29.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            /*Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(() {});
                })*/
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(() {});
                }),
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value;
                  setState(() {});
                })
          ],
        ),
      ),
    );
  }
}
