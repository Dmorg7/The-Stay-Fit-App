import 'package:flutter/material.dart';
import 'login.dart';
import 'auth.dart';

class RootPage extends StatefulWidget {
  RootPage({this.auth});
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _RootPageState();
}

enum AuthStatus { notsSignedIn, signedIn }

class _RootPageState extends State<RootPage> {
  AuthStatus authStatus = AuthStatus.notsSignedIn;

  @override
  void initState() {
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        //authStatus = userId == null ? AuthStatus.notsSignedIn : AuthStatus.signedIn;
      });
    });
  }


  void _signedIn() {
    setState(() {
      authStatus = AuthStatus.signedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStatus.notsSignedIn:
        return new LoginPage(
          auth: widget.auth,
          onSignedIn: _signedIn,
        );
      case AuthStatus.signedIn:
        return new Scaffold(
          body: new Container(
            child: new Text('Welcome'),
          )
        );
    }
  }
}
