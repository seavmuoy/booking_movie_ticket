import 'package:flutter/material.dart';

import '../Widgets/Widgets.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.3,
          centerTitle: true,
          title: const TextFrave(
              text: 'Coming Soon',
              color: Color.fromARGB(255, 139, 154, 186),
              fontWeight: FontWeight.w500,
              fontSize: 21)),
    );
  }
}
