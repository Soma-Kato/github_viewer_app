import 'package:flutter/material.dart';

TextFormField emailTextField(TextEditingController controller) {
  return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: 'メールアドレス'),
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return "メールアドレスを入力してください";
        }
      });
}

TextFormField passwordTextField(TextEditingController controller) {
  return TextFormField(
      obscureText: true,
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'パスワード'),
      // ignore: missing_return
      validator: (value) {
        if (value.isEmpty) {
          return "パスワードを入力してください";
        }
      });
}
