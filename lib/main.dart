import 'package:flutter/material.dart';

import 'features/auth/presentation/screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My First App', home: LoginScreen());
  }
}
