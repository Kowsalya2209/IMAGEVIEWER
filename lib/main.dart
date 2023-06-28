import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageViewer(),
    );
  }
}

class ImageViewer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Image Viewer")),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/image.jpg",
            width: 500,
          ),
          Text(
            "THE HIGHWAY",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.blue,
                fontSize: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
