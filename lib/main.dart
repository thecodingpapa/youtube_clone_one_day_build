import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:youtubecloneonedaybuild/data/bool_change_notifier.dart';
import 'package:youtubecloneonedaybuild/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: ChangeNotifierProvider(
          create: (BuildContext context) {
            return BoolNotifier();
          },
          child: HomePage()),
    );
  }
}
