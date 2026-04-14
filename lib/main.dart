import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(const NalApp());
}

class NalApp extends StatelessWidget {
  const NalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NAL App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const LoginScreen(),
    );
  }
}
