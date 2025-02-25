import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  _ImageLearn202State createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(ImagePaths.ayran.path()),
    );
  }
}


enum ImagePaths{
  ayran
}

extension ImagePathsExtension on ImagePaths{
  String path() {
    return 'assets/images/$name.png';
  }
}