import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screen/signin_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(const MyApp()));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FitSync App',
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
    );
  }
}
