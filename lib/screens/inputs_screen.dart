import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: const [
          CustomTextFormField(
            hintText: 'Nombre y apellidos',
            labelText: 'Nombre completo',
            helperText: 'Solo letras',
            icon: Icons.assignment_ind_outlined,
            suffixIcon: Icons.group_outlined,
          ),
        ]),
      ),
    );
  }
}
