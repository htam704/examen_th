import 'package:examen_th/models/menu_option_th.dart';
import 'package:examen_th/screens/monitores_screen_th.dart';
import 'package:examen_th/screens/pistas_screen_th.dart';
import 'package:examen_th/screens/reservas_screen_th.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'Pistas', 
      icon: Icons.house_rounded, 
      name: 'Pistas', 
      screen: const PistasScreen()),
    MenuOption(
      route: 'Monitores', 
      icon: Icons.list_alt, 
      name: 'Monitores', 
      screen: const MonitoresScreen()),
    MenuOption(
      route: 'Reservas', 
      icon: Icons.add_alert_outlined, 
      name: 'Reservas', 
      screen: const ReservasScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for ( final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext context ) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ReservasScreen()
    );
  }
}