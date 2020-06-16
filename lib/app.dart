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

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 1500)).then((_) => {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
              (route) => false)
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Text("Splash", style: TextStyle(fontSize: 40.0)))));
  }
}
