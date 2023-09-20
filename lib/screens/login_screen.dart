import 'dart:async';

import 'package:dream_job/screens/home_screen.dart';
import 'package:dream_job/widgets/action_button.dart';
import 'package:dream_job/widgets/loginbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool load = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F2F2),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Ionicons.arrow_back)),
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login To Your Account",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginButtonWidget(
                text: "Google",
                icon: Ionicons.logo_google,
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginButtonWidget(
                text: "Phone",
                icon: Ionicons.phone_portrait_outline,
              ),
              const SizedBox(
                height: 20,
              ),
              const LoginButtonWidget(
                text: "Username",
                icon: Ionicons.person_circle_outline,
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    load = true;
                  });
                  Timer(const Duration(seconds: 1), () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HomeScreen())));
                  });
                },
                child: ActionButton(text: "CONFIRM", load: load),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    const Text(
                      "Don't hove on Acount yet?",
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                    TextButton(
                      child: const Text(
                        "SING UP",
                        style: TextStyle(color: Color(0XFFD98218)),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
