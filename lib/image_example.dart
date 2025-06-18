import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/flower.webp", fit: BoxFit.fill,
      width: double.infinity, height: double.infinity,)),
    );
  }
}
