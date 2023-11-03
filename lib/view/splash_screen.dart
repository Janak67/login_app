import 'package:flutter/material.dart';
import 'package:login_app/utils/share_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  bool? islogin;

  void initState() {
    super.initState();
    createData();
  }

  Future<void> createData() async {
    ShareHelper shr = ShareHelper();
    islogin = await shr.getLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(
            context, islogin == false || islogin == null ? 'login' : 'home');
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            "assets/img/login.png",
            height: 150,
          ),
        ),
      ),
    );
  }
}
