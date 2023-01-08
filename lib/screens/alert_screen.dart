import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

//Para Ios
  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta!!'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text('Ok'))
            ],
          );
        });
  }

//Para andriod
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: ((context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta!!'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: (() => Navigator.pop(context)),
                  child: const Text('OK'))
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIos(context),

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Mostrar Alerta',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
