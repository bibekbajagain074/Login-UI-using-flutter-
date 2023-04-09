import 'package:flutter/material.dart';
import 'package:login_app/utils/routes.dart';
import 'pages/MyHomePage.dart';
import 'package:login_app/pages/LoginPage.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.LoginRoute: (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.HomeRoute: (context) => MyHomePage(),
      },
    );
  }
}
