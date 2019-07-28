import 'package:flutter/material.dart';

class Ranking1 extends StatelessWidget {
  final int index;

  Ranking1(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Card(
        child: InkWell(
          child: Container(
            width: 300,
            height: 100,
            child: Center(
              child: Text("Logros $index"),
            ),
          ),
        ),
      ),
    );
  }
}

class Ranking2 extends StatelessWidget {
  final int index;

  Ranking2(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Ranking2, index: $index'),
    );
  }
}
