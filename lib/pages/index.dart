import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  // String agrs;
  // IndexPage(String agrs){
  //   this.agrs = agrs;
  // }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndexPageState();
  }
}

class _IndexPageState extends State<IndexPage> {
  // String agrs;
  // _IndexPageState(String agrs){
  //   this.agrs = agrs;
  // }
  @override
  Widget build(BuildContext context) {
    String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Index Page"),
      ),
      body: Text(args),
    );
  }
}
