import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key key, @required this.photoUrl, this.child})
      : super(key: key);
  final String photoUrl;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(16.0),
      height: MediaQuery.of(context).size.height / 4.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(photoUrl),
          fit: BoxFit.fill,
          colorFilter:
              ColorFilter.mode(Colors.grey.withOpacity(0.6), BlendMode.srcOver),
        ),
      ),
      child: child,
    );
  }
}
