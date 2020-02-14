import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key key, @required this.onTap, @required this.iconData})
      : super(key: key);
  final VoidCallback onTap;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Theme.of(context).primaryColor,
        textStyle: Theme.of(context)
            .textTheme
            .body1
            .copyWith(color: Theme.of(context).backgroundColor), // button color
        child: InkWell(
          splashColor: Theme.of(context).accentColor, // inkwell color
          child: SizedBox(
              width: 56,
              height: 56,
              child: Icon(
                iconData,
                color: Theme.of(context).backgroundColor,
              )),
          onTap: onTap,
        ),
      ),
    );
  }
}
