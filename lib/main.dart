import 'package:delivery_app/screens/tabs_screen.dart';
import 'package:delivery_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        home: const TabsScreen());
  }
}
