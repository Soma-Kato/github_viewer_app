import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:github_viewer_app/ui/widget/text_from_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => _LoginPageUserState();
}

class _LoginPageUserState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ログイン画面"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                emailTextField(_emailController),
                passwordTextField(_passwordController),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          final email = _emailController.text;
                          final password = _passwordController.text;

                          print("email: " + email + "\npassword: " + password);
                        } else {
                          Fluttertoast.showToast(msg: "ログインできませんでした");
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
