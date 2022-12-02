import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Tyrion',
      'apellidos': 'Lannister',
      'email': 'tyrion@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            CustomTextFormField(
              hintText: 'Nombre',
              labelText: 'Nombre del usuario',
              helperText: 'Solo letras',
              icon: Icons.assignment_ind_outlined,
              suffixIcon: Icons.group_outlined,
              formProperty: 'nombre',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'Apellidos',
              labelText: 'Apellidos del usuario',
              icon: Icons.supervised_user_circle_rounded,
              formProperty: 'apellidos',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'E-Mail',
              labelText: 'E-Mail del usuario',
              icon: Icons.alternate_email_rounded,
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: 'Contraseña',
              labelText: 'Contraseña del usuario',
              icon: Icons.password_outlined,
              obscureText: true,
              formProperty: 'password',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'usuario', child: Text('Usuario')),
                  DropdownMenuItem(value: 'editor', child: Text('Editor')),
                  DropdownMenuItem(
                      value: 'programador', child: Text('Programador')),
                  DropdownMenuItem(
                      value: 'administrador', child: Text('Administrador')),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'usuario';
                }),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const SizedBox(
                  width: double.infinity, child: Center(child: Text('Enviar'))),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());

                if (!myFormKey.currentState!.validate()) {
                  print('Formulario no válido');
                  return;
                }
                print(formValues);
              },
            )
          ]),
        ),
      ),
    );
  }
}
