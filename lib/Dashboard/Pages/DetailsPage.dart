import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final List<String> package;
  final List<String> permission;

  const DetailsPage({Key? key, required this.package, required this.permission})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff004481),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text('Package',
                        style: GoogleFonts.getFont('Inter',
                            fontSize: 18, color: Colors.white))),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffEFF3FA),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      package.length,
                      (index) => Text('$index -> ${package[index]}',
                          style: GoogleFonts.getFont('Inter', fontSize: 17))),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff004481),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                    child: Text('Permission',
                        style: GoogleFonts.getFont('Inter',
                            fontSize: 18, color: Colors.white))),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffEFF3FA),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      permission.length,
                      (index) => Text('$index -> ${permission[index]}',
                          style: GoogleFonts.getFont('Inter', fontSize: 17))),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
