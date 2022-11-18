import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(AppRoutes.MenuOptions[index].icon),
                  title: Text(AppRoutes.MenuOptions[index].name),
                  onTap: () {
                    final route = MaterialPageRoute(
                        builder: (context) => const Listview1Screen());
                    Navigator.pushNamed(
                        context, AppRoutes.MenuOptions[index].route);
                  },
                ),
            separatorBuilder: ((context, index) => const Divider()),
            itemCount: AppRoutes.MenuOptions.length));
  }
}
