import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          // margin: MediaQuery.of(context).padding,
          color: Colors.pinkAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Hello World")],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(1, 50, 100, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("CS MSU"),
                  ],
                ),
              ),
            ],
          ),
        ));
    throw UnimplementedError();
  }
}
