import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_max_sharp,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        name: 'Listview tipo 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list,
        name: 'Listview tipo 2',
        screen: const Listview2Screen()),
    /*MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'Home Screen',
        screen: const AlertScreen()),*/
    MenuOption(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Tarjetas - Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'mensajesalerta',
        icon: Icons.warning_amber_rounded,
        name: 'Mensajes Alerta',
        screen: const MensajesalertaScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline_rounded,
        name: 'Animated Container',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Forms: Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slow_motion_video,
        name: 'Sliders & Checks',
        screen: const SliderScreen()),
    MenuOption(
        route: 'slider2',
        icon: Icons.slow_motion_video,
        name: 'Sliders & Checks 2',
        screen: const Slider2Screen()),
    MenuOption(
        route: 'listviewbuilder',
        icon: Icons.build_circle_outlined,
        name: 'InfiniteScroll - Pull to refresh',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
