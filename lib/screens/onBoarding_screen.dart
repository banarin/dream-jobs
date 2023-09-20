import 'dart:async';

import 'package:dream_job/screens/login_screen.dart';
import 'package:dream_job/widgets/action_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool load = false;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      load = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F2F2),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Find Your",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Events",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0XFFD98218),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Aucune adresse e-mail de récupération n'est associée à votre compte, banarin60@gmail.com. Si vous perdez l'accès à celui-ci, vous aurez besoin d'une adresse e-mail de récupération pour y accéder de nouveau",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  load = true;
                });
                Timer(const Duration(seconds: 1), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const LoginScreen())));
                });
              },
              child: ActionButton(text: "GET STARTED", load: load),
            )
          ],
        ),
      )),
    );
  }
}
