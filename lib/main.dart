import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:travel_nebula/pages/booking_page.dart';
import 'package:travel_nebula/pages/elysium_colony.dart';
import 'package:travel_nebula/pages/payment_page.dart';
import 'pages/home_page.dart';
import 'pages/signin_page.dart';
import 'pages/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'Nebula',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
      // Wrap your app with DevicePreview
      enabled: true, // Set to true to enable device preview
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
