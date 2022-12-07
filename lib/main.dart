import 'package:flutter/material.dart';
import 'root_page.dart';
import 'package:window_size/window_size.dart';
import 'package:flutter/foundation.dart';

bool isSystem() {
  if (defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.windows) {
    return true;
  } else {
    return false;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (isSystem()) {
      setWindowTitle("Sigma");
    }
    return MaterialApp(
      title: "SIGMA",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const RootPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
