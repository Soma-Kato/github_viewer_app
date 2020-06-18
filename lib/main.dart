import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:github_viewer_app/app.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(GithubViewerApp());
}
