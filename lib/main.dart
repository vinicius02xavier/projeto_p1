// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto_p1/login.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaLogin(),
    );
  }
}
