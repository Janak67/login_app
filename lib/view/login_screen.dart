import 'package:flutter/material.dart';
import 'package:login_app/provider/login_provider.dart';
import 'package:login_app/provider/theme_provider.dart';
import 'package:login_app/view/home_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login App"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email',
                        hintText: "Enter valid email id",
                        filled: true),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      hintText: 'Enter secure Password',
                      labelText: 'Password',
                      filled: true,
                      suffixIcon: Consumer<PasswordProvider>(
                        builder: (context, value, child) => IconButton(
                          icon: Icon(value.passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            value.togglePassword();
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: const Text("New User ? Create Account"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
