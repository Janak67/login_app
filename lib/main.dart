import 'package:flutter/material.dart';
import 'package:login_app/provider/login_provider.dart';
import 'package:login_app/provider/theme_provider.dart';
import 'package:login_app/utils/app_routes.dart';
import 'package:login_app/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        )
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value.islight ? lightTheme : darkTheme,
          routes: screen_routes,
        ),
      ),
    ),
  );
}
