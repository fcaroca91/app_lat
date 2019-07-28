import 'package:flutter/material.dart';
import '../screens/menu_secundario.dart';

class MenuPrincipal extends StatefulWidget {
  MenuPrincipal({Key key}) : super(key: key);

  @override
  _MenuPrincipaltState createState() => _MenuPrincipaltState();
}

class _MenuPrincipaltState extends State<MenuPrincipal> with SingleTickerProviderStateMixin{
  TabController _controller;
  int _index;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RANKING"),
        bottom: new TabBar(controller: _controller, tabs: <Tab>[
          new Tab(text: "RANKING 1"),
          new Tab(text: "RANKING 2")
        ]),
      ),
      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          new Ranking1(_index),
          new Ranking2(_index),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _index,
          onTap: (int _index) {
            setState(() {
              this._index = _index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(Icons.library_books),
              title: new Text("APRENDER"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.assessment),
              title: new Text("RANKING"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.account_box),
              title: new Text("PERFIL"),
            ),
          ]),
    );
  }
}