import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login App"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.logout)),
            Consumer<ThemeProvider>(
              builder: (context, value1, child) => Switch(
                value: value1.islight,
                onChanged: (value) {
                  value1.changeTheme();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
