import 'package:amazon_app/utils/theme.dart';
import 'package:amazon_app/view/auth_screen/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Amazon());
}

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
