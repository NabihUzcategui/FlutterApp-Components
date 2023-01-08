import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                activeColor: AppTheme.primary,
                value: _sliderValue,
                min: 50,
                max: 400,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),

            //Tipo 1 de checkbox
            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: (value) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   },
            // ),

            //Tipo 1 de checkbox
            CheckboxListTile(
              title: const Text('Habilitar slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) {
                setState(() {
                  _sliderEnabled = value ?? true;
                });
              },
            ),

            //Tipo 1 de checkbox o swicth
            // Switch(
            //     activeColor: AppTheme.primary,
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       setState(() {
            //         _sliderEnabled = value;
            //       });
            //     }),

            //Tipo 1 de checkbox o swicth
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() {
                    _sliderEnabled = value;
                  });
                }
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/esstarwars/images/1/1e/Chewbacca-Fathead.png/revision/latest?cb=20180112223316'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),


            const AboutListTile()
          ],
        ));
  }
}
