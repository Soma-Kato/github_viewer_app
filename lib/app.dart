import 'package:flutter/material.dart';
import 'package:github_viewer_app/ui/login/login_page.dart';

class GithubViewerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'GithubViewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage());
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Splash",
              style: TextStyle(fontSize: 40.0),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage())),
              child: Text("Login"),
            )
          ],
        ),
      ),
    ));
  }
}
