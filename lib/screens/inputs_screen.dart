

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myformkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Nabih',
      'last_name': 'Uzcategui',
      'email': 'correo@correo.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Form(
              key: myformkey,
              child: Column(
                children: [
                  CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre del Usuario',
                      formPorperty: 'first_name',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario',
                    formPorperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del Usuario',
                    keyboardtype: TextInputType.emailAddress,
                    formPorperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del Usuario',
                    obscureText: true,
                    formPorperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),

                  DropdownButtonFormField<String>(
                    value: 'Admin',

                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ], 
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(height: 30),


                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myformkey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }

                      print(formValues);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
