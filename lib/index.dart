import 'package:flutter/material.dart';
import './screens/menu_principal.dart';

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AppLat",
      home: MenuPrincipal(),
    );
  }
}