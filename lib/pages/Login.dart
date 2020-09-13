import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/index.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }

}

class _LoginState extends State<Login> {

  String massage;
  TextEditingController _usernameController = new TextEditingController();
  // var _usernameController =  new TextEditingController();

  // final _usernameController = TextEditingController();
  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   _usernameController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: MediaQuery.of(context).padding,
        // color: Colors.white24,
        child: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            shrinkWrap: true,
            children: [
              Image.asset(
                'images/icon.png',
                width: 200,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(labelText: "Username"),
                  controller: _usernameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 0, bottom: 10),
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: (){
                      print(_usernameController.text);
                      massage =  _usernameController.text;
                      setState(() {

                      });

                      Navigator.pushNamed(context, '/index-page' , arguments: _usernameController.text);

                    },
                    child: Text("Login"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      setState(() {
                        massage = null;
                      });

                      Navigator.push(context, MaterialPageRoute(builder: (context) => IndexPage()));
                    },
                    child: Text("Register"),
                  )
                ],
              ),
              Center(child: Text("2020 \u00a9 Airada")),
              (massage != null) ? Text(massage) : Container()
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
