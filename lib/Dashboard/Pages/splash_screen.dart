// ignore_for_file: library_private_types_in_public_api

import 'package:booking_movie/Cinema/home_cine_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const HomeCinePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 37, 27),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://static.wixstatic.com/media/dc4461_a4dffda130894178b0fa42d4367d2ced~mv2.png/v1/fill/w_135,h_89,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/image_2022-06-16_09-58-43-removebg-preview_edited.png',
              height: 130,
            ),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Welcome to HomeOfMovie',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
